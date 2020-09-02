Modified from the original code:
```
    https://github.com/HackerShackOfficial/OpenAI-NEAT
```

To replicate these tests, first install some python dependencies:

```
    pip3 install scipy neat-python==0.8 argparse pickle
```

Then call an individual environment like this:
```
    ENV="MountainCar-v0"
    time python3 gym_solver.py --environment $ENV --configFile Envs/$ENV/config --max-steps=1000 --episodes=1 --generations=1000 --num-cores 12 > Envs/$Env/Exe-$1.txt
```

Or give execution permisions to RepeatNEAT script:
```
    chmod +x RepeatNEAT.sh
    nohup ./RepeatNEAT.sh > EnvTests.txt &
```

Tested for the following OpenAI Gym environments:
- MountainCar
- Roullete
- NChain
- Copy
- DuplicatedInput
