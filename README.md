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
   curl https://mise.run | sh
   ```

2. **Install chezmoi via mise**:
   ```bash
   ~/.local/bin/mise use -g chezmoi@latest
   ```

3. **Initialize dotfiles**:
   ```bash
   chezmoi init --apply mariusrueve
   ```

## Structure
- `dot_zshrc`: Zsh configuration.
- `dot_gitconfig.tmpl`: Git global config template (host-specific identity).
- `dot_config/mise/config.toml`: `mise` tool definitions.

## Workflow Notes
- After running `mise use -g ...`, sync the updated file back into chezmoi source:
   ```bash
   chezmoi re-add ~/.config/mise/config.toml
   ```
