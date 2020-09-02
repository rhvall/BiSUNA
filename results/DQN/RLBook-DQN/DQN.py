# pip3 install tensorflow==1.15.3
# pip3 install gym

import argparse
import numpy as np
import tensorflow as tf
import gym
from gym.spaces import Box, Tuple, Discrete

MountainCar = "MountainCar-v0"
parser = argparse.ArgumentParser(description='OpenAI Gym Solver')
parser.add_argument('--environment', dest='envName', type=str, default="MountainCar-v0",
                    help='The OpenAI Gym name, supported list: MountainCar-v0, Roulette-v0, NChain-v0, Copy-v0, DuplicatedInput-v0')
parser.add_argument('--episodes', type=int, default=10,
                    help="The number of times to run a single genome. This takes the fitness score from the worst run")
args = parser.parse_args()

def typeLength(param):
    if (isinstance(param, Box)):
        return len(param.sample())
    elif (isinstance(param, Tuple)):

        for s in param:

        return len(param)
    elif (isinstance(param, Discrete)):
        return 1
    else:
        print(f"Type not recognized: {param}")
        return 0

class DQN:
    def __init__(self,learning_rate,gamma,n_features,n_actions,epsilon,parameter_changing_pointer,memory_size):

        self.learning_rate = learning_rate
        self.gamma = gamma
        self.n_features = n_features
        self.n_actions = n_actions
        self.epsilon = epsilon
        self.batch_size = 100
        self.experience_counter = 0
        self.experience_limit = memory_size
        self.replace_target_pointer = parameter_changing_pointer
        self.learning_counter = 0
        self.memory = np.zeros([self.experience_limit,self.n_features*2+2])  #for experience replay

        self.build_networks()
        p_params = tf.get_collection('primary_network_parameters')
        t_params = tf.get_collection('target_network_parameters')
        self.replacing_target_parameters = [tf.assign(t,p) for t,p in zip(t_params,p_params)]

        self.sess = tf.Session()
        self.sess.run(tf.global_variables_initializer())


    def build_networks(self):
        #primary network
        hidden_units = 10
        self.s = tf.placeholder(tf.float32,[None,self.n_features], "Q-inputs")
        self.qtarget = tf.placeholder(tf.float32,[None,self.n_actions], "Q-outputs")

        with tf.variable_scope('primary_network'):
            c = ['primary_network_parameters', tf.GraphKeys.GLOBAL_VARIABLES]
            # first layer
            with tf.variable_scope('layer1'):
                w1 = tf.get_variable('w1', [self.n_features, hidden_units],initializer=tf.contrib.layers.xavier_initializer(),
                                     dtype=tf.float32,collections=c)
                b1 = tf.get_variable('b1', [1, hidden_units],initializer=tf.contrib.layers.xavier_initializer(),
                                     dtype=tf.float32,collections=c)
                l1 = tf.nn.relu(tf.matmul(self.s, w1) + b1)

            # second layer
            with tf.variable_scope('layer2'):
                w2 = tf.get_variable('w2', [hidden_units, self.n_actions],initializer=tf.contrib.layers.xavier_initializer(),
                                     dtype=tf.float32,collections=c)
                b2 = tf.get_variable('b2', [1, self.n_actions],initializer=tf.contrib.layers.xavier_initializer(),
                                     dtype=tf.float32,collections=c)
                self.qeval = tf.matmul(l1, w2) + b2


        with tf.variable_scope('loss'):
                self.loss = tf.reduce_mean(tf.squared_difference(self.qtarget,self.qeval))

        with tf.variable_scope('optimiser'):
                self.train = tf.train.AdamOptimizer(self.learning_rate).minimize(self.loss)

        #target network
        self.st = tf.placeholder(tf.float32,[None,self.n_features])

        with tf.variable_scope('target_network'):
            c = ['target_network_parameters', tf.GraphKeys.GLOBAL_VARIABLES]
            # first layer
            with tf.variable_scope('layer1'):
                w1 = tf.get_variable('w1', [self.n_features, hidden_units],initializer=tf.contrib.layers.xavier_initializer(),
                                     dtype=tf.float32,collections=c)
                b1 = tf.get_variable('b1', [1, hidden_units],initializer=tf.contrib.layers.xavier_initializer(),
                                     dtype=tf.float32,collections=c)
                l1 = tf.nn.relu(tf.matmul(self.st, w1) + b1)

            # second layer
            with tf.variable_scope('layer2'):
                w2 = tf.get_variable('w2', [hidden_units, self.n_actions],initializer=tf.contrib.layers.xavier_initializer(),
                                     dtype=tf.float32,collections=c)
                b2 = tf.get_variable('b2', [1, self.n_actions],initializer=tf.contrib.layers.xavier_initializer(),
                                     dtype=tf.float32,collections=c)
                self.qt = tf.matmul(l1, w2) + b2

    def target_params_replaced(self):
        self.sess.run(self.replacing_target_parameters)

    def store_experience(self,obs,a,r,obs_):
        index = self.experience_counter % self.experience_limit
        self.memory[index,:] = np.hstack((obs,[a,r],obs_))
        self.experience_counter+=1

    def fit(self):
        # sample batch memory from all memory
        if self.experience_counter < self.experience_limit:
            indices = np.random.choice(self.experience_counter, size=self.batch_size)
        else:
            indices = np.random.choice(self.experience_limit, size=self.batch_size)

        batch = self.memory[indices,:]
        qt,qeval = self.sess.run([self.qt,self.qeval],feed_dict={self.st:batch[:,-self.n_features:],self.s:batch[:,:self.n_features]})

        qtarget = qeval.copy()
        batch_indices = np.arange(self.batch_size, dtype=np.int32)
        actions = self.memory[indices,self.n_features].astype(int)
        rewards = self.memory[indices,self.n_features+1]
        qtarget[batch_indices,actions] = rewards + self.gamma * np.max(qt,axis=1)

        _ = self.sess.run(self.train,feed_dict = {self.s:batch[:,:self.n_features],self.qtarget:qtarget})

        #increasing epsilon
        if self.epsilon < 0.9:
            self.epsilon += 0.0002

        #replacing target network parameters with primary network parameters
        if self.learning_counter % self.replace_target_pointer == 0:
            self.target_params_replaced()
            print("target parameters changed")

        self.learning_counter += 1

    def epsilon_greedy(self,obs):
        #epsilon greedy implementation to choose action
        if np.random.uniform(low=0,high=1) < self.epsilon:
            # if (args.envName == MountainCar):
            if isinstance(obs, np.ndarray):
                ns = [1] + list(obs.shape)
                nsr = obs.reshape(ns)
            else:
                nsr = np.expand_dims([obs],1)
                # nsr = [np.newaxis] + [obs]
            # print(f'Obj: {self.s}, obs:{obs}, obs2:{nsr}')
            return np.argmax(self.sess.run(self.qeval,feed_dict={self.s:nsr}))
            # else:
            #     print(f'Obj: {self.s}, obs:{obs}, obs2:{[np.newaxis,obs]}')
            #     return np.argmax(self.sess.run(self.qeval,feed_dict={self.s:[obs]}))
        else:
            return np.random.choice(self.n_actions)



if __name__ == "__main__":
    env = gym.make(args.envName)
    env = env.unwrapped
    inputs = typeLength(env.observation_space) # env.observation_space.shape[0]
    outputs = typeLength(env.action_space) # env.action_space.n  #
    print("Environment: " + args.envName)
    print(f"Input size: {inputs}, Output size: {outputs}")
    dqn = DQN(learning_rate=0.001,gamma=0.9,n_features=inputs,n_actions=outputs,epsilon=0.0,parameter_changing_pointer=500,memory_size=5000)

    episodes = args.episodes
    total_steps = 0

    for episode in range(episodes):
        steps = 0
        obs = env.reset()
        episode_reward = 0
        while True:
            # env.render()
            action = dqn.epsilon_greedy(obs)
            # print(action)
            obs_,reward,terminate,_ = env.step(action)
            # print("Reward: {}".format(reward))
            if (args.envName == MountainCar):
                reward = abs(obs_[0]+0.5)
            # print("Reward2: {}".format(reward))
            dqn.store_experience(obs,action,reward,obs_)
            if total_steps > 1000:
                #env.reset();
                dqn.fit()
            episode_reward+=reward
            if terminate:
                break
            obs = obs_
            total_steps+=1
            steps+=1
        print("Episode {} with Reward : {} at epsilon {} in steps {}".format(episode+1,episode_reward,dqn.epsilon,steps))
    # env.close()

    # while True:  #to hold the render at the last step when Car passes the flag
    #     env.render()

# import gym
# from gym.spaces import Box, Tuple, Discrete
# env = gym.make("MountainCar-v0")
# env = gym.make("Roulette-v0")
# env = gym.make("NChain-v0")
# env = gym.make("Copy-v0")
# env = gym.make("DuplicatedInput-v0")
# env = env.unwrapped
# inputs = env.observation_space
# outputs = env.action_space
# obs = env.reset()
# envs = ["MountainCar-v0", "Roulette-v0", "NChain-v0", "Copy-v0", "DuplicatedInput-v0"]
# for env in envs:
#     cenv = gym.make(env)
#     print("env:" + env)
#     print("Input Nodes: %s" % str(cenv.observation_space))
#     print("Output Nodes: %s" % str(cenv.action_space))
#
# env:MountainCar-v0
# Input Nodes: Box(2,)
# Output Nodes: Discrete(3)
# env:Roulette-v0
# Input Nodes: Discrete(1)
# Output Nodes: Discrete(38)
# env:NChain-v0
# Input Nodes: Discrete(5)
# Output Nodes: Discrete(2)
# env:Copy-v0
# Input Nodes: Discrete(6)
# Output Nodes: Tuple(Discrete(2), Discrete(2), Discrete(5))
# env:DuplicatedInput-v0
# Input Nodes: Discrete(6)
# Output Nodes: Tuple(Discrete(2), Discrete(2), Discrete(5))
