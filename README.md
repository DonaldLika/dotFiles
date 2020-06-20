# Donald's dotfiles

This is my main repository of the dotfiles I use on different systems.

## Directories

    .
    ├── .configs                # Configuration files for different tools
    ├── install                 # Installation scripts for various packages
    ├── scripts                 # Helpful scripts
    ├── bootstrap.sh            # Script for installing all packages and applying default settings
    ├── LICENSE          
    └── README.md

## Installation

In order to bootstrap directly, run the following command:
```text
curl -sL https://github.com/DonaldLika/dotFiles/bootstrap.sh \
| /usr/bin/env bash -ex
```
Follow the instructions.