# Project Guidelines

## Architecture
- This workspace is a personal dotfiles repo managed by `chezmoi`, not an app/service codebase.
- Host-scoped data lives in `dot_config/chezmoi/chezmoi.toml` (`[data].hostname = "orangutan"`).
- Primary managed targets are:
  - `dot_zshrc` (shell behavior and aliases)
  - `dot_gitconfig` (git identity + credential helpers)
  - `dot_config/chezmoi/chezmoi.toml` (chezmoi runtime config)
  - `dot_config/mise/config.toml` (tool versions)
  - `dot_zsh/completions/*` (CLI completion scripts)

## Build and Test
- There is no build pipeline. Validate by linting/parsing config files and shell startup files.
- Run these checks after edits:

```bash
zsh -n dot_zshrc
git config --file dot_gitconfig --list >/dev/null
python3 -c "import tomllib; tomllib.load(open('dot_config/chezmoi/chezmoi.toml','rb')); tomllib.load(open('dot_config/mise/config.toml','rb')); print('toml ok')"
ls dot_zsh/completions
```

- If `chezmoi` is available, also run:

```bash
chezmoi diff
chezmoi apply --dry-run --verbose
```

## Project Conventions
- Keep shell configuration style consistent with `dot_zshrc`: grouped exports/options, then init/eval blocks, then aliases.
- Preserve zsh completion setup pattern (`fpath`, `compinit`, `zstyle`, history keybindings) used in `dot_zshrc`.
- Treat `dot_zsh/completions/_chezmoi`, `_gh`, and `_mise` as generated/externally sourced unless a task explicitly asks to regenerate or patch them.
- `dot_zshrc` currently contains a hardcoded path (`/Users/marius/.local/bin/mise`); do not silently rewrite platform-specific paths without user intent.

## Integration Points
- Toolchain is managed through `mise` definitions in `dot_config/mise/config.toml` (mostly `"latest"` versions).
- Prompt integration is via `starship init zsh` in `dot_zshrc`.
- Shell completion integration includes `uv generate-shell-completion zsh` and custom completion files in `dot_zsh/completions/`.
- GitHub authentication for git operations is delegated to `gh auth git-credential` in `dot_gitconfig`.

## Security
- Preserve the credential-helper configuration in `dot_gitconfig`; avoid changes that bypass `gh auth git-credential` for GitHub/Gist.
- Keep the existing noreply git email convention unless explicitly asked to change identity settings.
- Do not add plaintext secrets/tokens to tracked dotfiles; this repo currently stores configuration only.

## Reference Files
- [README.md](../README.md)
- [dot_config/chezmoi/chezmoi.toml](../dot_config/chezmoi/chezmoi.toml)
- [dot_zshrc](../dot_zshrc)
- [dot_gitconfig](../dot_gitconfig)
- [dot_config/mise/config.toml](../dot_config/mise/config.toml)
- [dot_zsh/completions](../dot_zsh/completions)
