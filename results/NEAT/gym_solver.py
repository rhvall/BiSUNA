# Base code:
# https://github.com/HackerShackOfficial/OpenAI-NEAT
# pip3 install scipy neat-python==0.8 argparse
# python3 gym_solver.py --max-steps=1000 --episodes=10 --generations=50 --num-cores 1 --environment Roulette-v0

import argparse
import gym
from gym.spaces import Box, Tuple, Discrete
import os
import numpy as np
import pickle
from neat import nn, population, statistics, parallel

parser = argparse.ArgumentParser(description='OpenAI Gym Solver')
parser.add_argument('--environment', dest='envName', type=str, default="MountainCar-v0",
                    help='The OpenAI Gym name, supported list: MountainCar-v0, Roulette-v0, NChain-v0, Copy-v0, DuplicatedInput-v0')
parser.add_argument('--configFile', dest='configFile', type=str, default="gym_config",
                    help='Path to the NEAT configuration file')
parser.add_argument('--max-steps', dest='max_steps', type=int, default=1000,
                    help='The max number of steps to take per genome (timeout)')
parser.add_argument('--episodes', type=int, default=1,
                    help="The number of times to run a single genome. This takes the fitness score from the worst run")
parser.add_argument('--render', action='store_true')
parser.add_argument('--generations', type=int, default=50,
                    help="The number of generations to evolve the network")
parser.add_argument('--checkpoint', type=str,
                    help="Uses a checkpoint to start the simulation")
parser.add_argument('--num-cores', dest="numCores", type=int, default=4,
                    help="The number cores on your computer for parallel execution")
args = parser.parse_args()

# The name of the game to solve
game_name = args.envName
configFile = args.configFile


def typeLength(param):
    if (isinstance(param, Box)):
        return len(param.sample())
    elif (isinstance(param, Tuple)):
        return len(param)
    elif (isinstance(param, Discrete)):
        return 1
    else:
        print(f"Type not recognized: {param}")
        return 0

def withinRange(env, action):
    aspace = env.action_space


def simulate_species(net, env, episodes=1, steps=5000, render=False):
    fitnesses = []
    for runs in range(episodes):
        inputs = my_env.reset()
        cum_reward = 0.0
        for j in range(steps):
            if (isinstance(inputs,np.ndarray) == False):
                inputs = [inputs]
            outputs = net.serial_activate(inputs)
            if (typeLength(env.action_space) == 1):
                action = np.argmax(outputs)
            else:
                action = np.array(outputs).astype(int).tolist()
            # print(f"In: {inputs}, Out: {outputs}, Action: {action}")
            inputs, reward, done, _ = env.step(action)
            if render:
                env.render()
            if done:
                break
            cum_reward += reward

        fitnesses.append(cum_reward)

    fitness = np.array(fitnesses).mean()
    # print("Species fitness: %s" % str(fitness))
    return fitness


def worker_evaluate_genome(g):
    net = nn.create_feed_forward_phenotype(g)
    return simulate_species(net, my_env, args.episodes, args.max_steps, render=args.render)


def train_network(env):
    def evaluate_genome(g):
        net = nn.create_feed_forward_phenotype(g)
        return simulate_species(net, env, args.episodes, args.max_steps, render=args.render)

    def eval_fitness(genomes):
        for g in genomes:
            fitness = evaluate_genome(g)
            g.fitness = fitness

    # Simulation
    # local_dir = os.path.dirname(__file__)
    # config_path = os.path.join(local_dir, 'gym_config')
    pop = population.Population(configFile)

    # Load checkpoint
    if args.checkpoint:
        pop.load_checkpoint(args.checkpoint)
    # Start simulation
    if args.render | (args.numCores == 1):
        pop.run(eval_fitness, args.generations)
    else:
        pe = parallel.ParallelEvaluator(args.numCores, worker_evaluate_genome)
        pop.run(pe.evaluate, args.generations)
        # pop.run(eval_fitness, args.generations)

    pop.save_checkpoint("checkpoint")
    print("Checkpoint saved")
    # Log statistics.
    statistics.save_stats(pop.statistics)
    statistics.save_species_count(pop.statistics)
    statistics.save_species_fitness(pop.statistics)

    print('Number of evaluations: {0}'.format(pop.total_evaluations))

    # Show output of the most fit genome against training data.
    winner = pop.statistics.best_genome()

    # Save best network
    with open('winner.pkl', 'wb') as output:
       pickle.dump(winner, output, 1)

    print('\nBest genome:\n{!s}'.format(winner))
    print('\nOutput:')

    # raw_input("Press Enter to run the best genome...")
    winner_net = nn.create_feed_forward_phenotype(winner)
    for i in range(100):
        simulate_species(winner_net, env, 1, args.max_steps, render=args.render)

    if args.render:
        env.close()

my_env = gym.make(game_name)
print("Input Nodes: %s" % str(typeLength(my_env.observation_space)))
print("Output Nodes: %s" % str(typeLength(my_env.action_space)))
train_network(my_env)

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


# import gym
# from gym.spaces import Box, Tuple, Discrete
# env = gym.make("MountainCar-v0")
# # env = gym.make("Roulette-v0")
# # env = gym.make("NChain-v0")
# # env = gym.make("Copy-v0")
# # env = gym.make("DuplicatedInput-v0")
# env = env.unwrapped
# inputs = env.observation_space
# outputs = env.action_space
# obs = env.reset()
# env.action([1])
