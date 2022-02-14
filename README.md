
# Prepare your oi project xd




## Features

- Create's all cpp files you nedd
- Create's all files necessary for testing your program
- All boring stuff for you
- You don't waste your valuable time


## Installation

Install my creator by cloning this repo

```bash
  git clone ...
```

Than put downloaded catalog to your oi folder. Go to the main directory, and run start.sh script with your taks name. Make sure you made script executable with chmod.

```bash
  cd prepare_project
  chmod +x start.sh
  ./start.sh zad
```

It will make zad folder in parent directory with everythink you need. Don't forget to sign on top of main.cpp and brut.cpp.
## Usage/Examples

You write your main code in main.cpp file. The place for brutal version is in brut.cpp. In order to run main program use:
```shell
make
```
If you want to run brutal version run:
```shell
make brut
```

If you have program that generates testing inputs, place it in testing/generate_input.cpp.
In order to run it, run in testing directory:
```shell
make inputs
```

To test your program and validate it with your brutal program, in testing directory run:
```shell
./test.sh
```

You can also save correct outputs in testing/out directory, and than run:
```shell
./test_with_out.sh
```

Good Luck!