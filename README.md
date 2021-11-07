mac-setup
=========

My macOS setup. This repository contains configuration-as-code for setting up most of my keybindings and preferences. Initially based on the Macbot shell script, forked from [here](github.com/echohack/macbot.git).

Usage
-----

A full setup will involve three steps:

1. Run the main setup script: `make run-setup`
2. Perform the manual installation steps described in `setup.md`.
3. Run `make apply-all` to apply all configurations to local system.

There are different make targets for applying configuration to each application. Run `make help` to see all operations available. For instance, you could clone the repo and run `make bashrc && make vimrc` to get up and running quickly while shelled in on a remote system.
