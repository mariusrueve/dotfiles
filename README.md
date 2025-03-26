# Dotfiles Repository

This repository contains my configuration files (dotfiles) managed using GNU Stow.
Each directory in this repository corresponds to a specific application's configuration.

## Requirements

[GNU Stow](https://www.gnu.org/software/stow/) must be installed on your system.

For example, on Ubuntu/Debian:
```bash
sudo apt install stow
```
## Repository Structure

Organize your dotfiles by application. For example:

```
dotfiles/
├── ghostty
│   └── .config
│       └── ghostty
│           └── config
├── git
│   └── .gitconfig
├── ssh
│   └── .ssh
│       └── config
├── starship
│   └── .config
│       └── starship.toml
└── zsh
    ├── .zsh_aliases
    └── .zshrc
```

Each subdirectory should mimic the target file structure relative to your home directory.

## Deployment

GNU Stow simplifies managing symbolic links by “stowing” each application's configuration from your dotfiles repository into your home directory.

Once you’re inside the `dotfiles` directory, you can deploy, for example, your bash configuration by running:

```bash
stow zsh
```

This command creates symlinks in your home directory that point to the files in the `zsh` folder.