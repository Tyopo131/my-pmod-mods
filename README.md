# Modules
This repository is just a collection of **all of the pmod modules** that I use daily. All of them are made by me. Only tested in bash, does not work on zsh.
# Features
- A **custom main prompt**
- A **git branch indicator**
- A **custom $PS2**

# How to install
## Requirements
|Requirement|Version|
|-----------|-------|
|[pmod](https://github.com/Tyopo131/pmod/)|v0.2.0-alpha+|
|[Git](https://git-scm.com/)|Anything that supports modern protocols|
|This repository|\(obviously\)|
## Steps
1. Clone the repo into the `~/.prompt/mods` folder using git. This will work as pmod doesn't load anything from directories starting with a `.`.
    - Over SSH:\
    `git clone git@github.com:Tyopo131/my-pmod-mods.git`
    - Over HTTPS:\
    `git clone https://github.com/Tyopo131/my-pmod-mods.git`
2. **Reload pmod**, whether that's by something like `. ~/.my-shell-rc`, restarting your shell, or some absurd alias wizardry.
3. **Done!**
