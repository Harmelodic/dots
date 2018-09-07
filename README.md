# dots

Dot files for configuration and custom setup, as well as custom util functions and scripts, for a POSIX/UNIX machine (i.e. Linux, MacOS, etc.)

## Setup

- Clone this repo to your home (`~`) directory

- Add the following line to your interactive shell init script (i.e. `~/.bashrc` or `~/.bash_profile` file):

```
source dots/bashrc
```

- Open a fresh terminal and type: `cp $DOTS/vars.example $DOTS/vars && vi $DOTS/vars` and then setup your vars