# Dotfiles

Managed with [chezmoi](https://www.chezmoi.io/).

## Environment
- **Machine**: `orangutan`
- **Shell**: `zsh`
- **Tool Manager**: `mise`
- **Prompt**: `starship`

## Installation

To initialize these dotfiles on a new machine:

1. **Install mise**:
   ```bash
   curl https://mise.jdx.dev/install.sh | sh
   ```

2. **Install chezmoi via mise**:
   ```bash
   ~/.local/bin/mise use -g chezmoi@latest
   ```

3. **Initialize dotfiles**:
   ```bash
   chezmoi init --apply <your-username>
   ```

## Structure
- `dot_zshrc`: Zsh configuration.
- `dot_gitconfig`: Git global config.
- `private_dot_config/mise/config.toml`: `mise` tool definitions.
