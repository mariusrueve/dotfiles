# GEMINI.md - Chezmoi Dotfiles Overview

This directory is the source state for `chezmoi`, used to manage dotfiles and system configurations for the user `marius` on the machine `orangutan`.

## Project Type: Non-Code (Configuration/Dotfiles)

This is a configuration repository managed by [chezmoi](https://www.chezmoi.io/). It automates the deployment of configuration files to the home directory.

## Directory Structure & Key Files

- **`chezmoi.toml`**: The local configuration for chezmoi, defining variables like `hostname`.
- **`dot_gitconfig`**: (Mapped to `~/.gitconfig`) Global Git configuration, including GitHub CLI credential helper integration.
- **`dot_zshrc`**: (Mapped to `~/.zshrc`) Main Zsh configuration file. Features:
  - History management (shared, timestamped, deduplicated).
  - Advanced completion system (case-insensitive, menu-driven).
  - Integration with `mise`, `starship`, `uv`, and `eza`.
- **`private_dot_config/`**: (Mapped to `~/.config/`) Contains tool-specific configurations.
  - **`mise/config.toml`**: Defines global tool versions managed by `mise` (e.g., `node`, `uv`, `starship`, `eza`, `gemini-cli`).
- **`dot_zsh/completions/`**: Custom Zsh completion scripts for tools like `chezmoi`, `gh`, and `mise`.

## Key Technologies & Tools

- **Shell**: Zsh with `starship` prompt.
- **Tool Manager**: [mise](https://mise.jdx.dev/) (formerly rtx) for managing runtime versions and CLI tools.
- **File Explorer**: `eza` (aliased to `ls`, `ll`, `la`).
- **Python Toolchain**: `uv`.
- **Git**: Configured for GitHub integration.

## Usage

### Applying Changes
To apply the current state to the home directory:
```bash
chezmoi apply
```

### Adding New Files
To start managing a new file (e.g., `~/.bashrc`):
```bash
chezmoi add ~/.bashrc
```

### Updating Managed Files
To pull changes from the home directory back into this source directory:
```bash
chezmoi re-add
```

### Tool Management
Tools are managed via `mise`. To install or update tools defined in `private_dot_config/mise/config.toml`:
```bash
mise install
```
