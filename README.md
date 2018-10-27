# dots

Dot files for configuration and custom setup, as well as custom util functions and scripts, for a POSIX/UNIX machine (i.e. Linux, MacOS, etc.)

## Setup

Open a terminal and perform:

```bash
curl -s "https://gitlab.com/Harmelodic/dots/raw/master/install" | bash
```

## What now?

To what commands you can now do, run:

```bash
dots list
```

## I can see there have been updates in the repo, how do I get them?

Run:

```bash
dots upgrade
```

## I want to contribute!

Submit a PR!

## I'm just here to read, where do I start?

Look in the `bashrc` file in the project root. Everything gets `source`'d and built from there.

## Why `source-utils` and `utils`? Why not a single folder?

In bash, if you want to cleanly change directories and manipulate the file system, I found it's easier if you create functions in a file and then directly `source` that file, hence `source-utils`.

You'll also see that they are structured differently.  
Normal `utils` are just plain bash scripts, but `source-utils` look like:

```bash
cmd () {
    # Commands
}
```