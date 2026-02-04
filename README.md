# dots

Dot files for configuration and custom setup, as well as custom functions and scripts, for a POSIX/UNIX machine (i.e.
Linux, macOS, etc.)

## Setup

Open a terminal and perform:

```bash
curl -s "https://raw.githubusercontent.com/Harmelodic/dots/main/install" | bash
```

## What now?

To find out what commands you can now use, run:

```bash
dots list
```

## Other than commands, what else does dots do?

dots will:

- Sets an environment variable, `$DOTS`, as your dots home
- Puts your terminal into `vi` mode
- Adds some shell aliases
- Adds some git aliases

## I can see there have been updates in the repo, how do I get them?

Run:

```bash
dots upgrade
```

## I want to contribute!

Submit a PR!

## I'm just here to read, where do I start?

Look in the `rc` file in the project root. Everything gets `source`'d and built from there.

## Why `source-bin` and `bin`? Why not a single folder?

In bash, if you want to cleanly change directories and manipulate the file system, I found it's easier if you create
functions in a file and then directly `source` that file, hence `source-bin`.

You'll also see that they are structured differently.  
Normal `bin` are just plain bash scripts, but `source-bin` look like:

```bash
cmd () {
    # Commands
}
```

As a side effect, everything in the `bin` directory can be identified using `which`, but everything in `source-bin`
cannot.

## Updating from `master` to `main`

Run the following:

```sh
git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a
```
