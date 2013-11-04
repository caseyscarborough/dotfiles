
# dotfiles

These are my config files for Mac OS X, typically stored in the ~ directory. These are used to keep all of my systems in sync and to easily reproduce my setup on any new machine.

## Installation

To install these configuration files on your machine, run the following commands.

```bash
git clone https://github.com/caseyscarborough/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule init && git submodule update
rake install
```

Nothing will be overwritten without your permission.

> _Note: On some Linux systems, you may have to manually install zsh first by running `sudo apt-get install zsh`._
