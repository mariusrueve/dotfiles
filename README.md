# dotfiles

Marius' terminal setup for the MacBook and the uni server **hessen**, managed with
[chezmoi](https://chezmoi.io). Replaces the old Nix setup (`mariusrueve/nixos-config`, archived).

## Daily use

```sh
chezmoi edit ~/.bashrc      # edit the source, then
chezmoi apply               # write it to $HOME (also runs brew bundle / mise when their lists change)
chezmoi diff                # what apply would change
chezmoi cd                  # shell in the repo: git add/commit/push as usual
chezmoi update              # on the other machine: git pull + apply
```

Where things go:
- **Mac CLI tool or app:** `Brewfile` (`brew`/`cask` line), then `chezmoi apply`.
- **hessen CLI tool:** `dot_config/mise/config.toml`.
- **Machine differences:** `{{ if .isMac }}` / `{{ if .isHessen }}` in `*.tmpl` files
  (data in `.chezmoi.toml.tmpl`), whole files via `.chezmoiignore`.
- **Neovim:** plain [LazyVim](https://lazyvim.org) in `dot_config/nvim`. Extras in `lua/config/lazy.lua`,
  LSPs/formatters via `:Mason`.

## New Mac

1. Install Homebrew (https://brew.sh), then `brew install chezmoi`.
2. `chezmoi init --apply mariusrueve/dotfiles` (installs the Brewfile, writes macOS defaults).
3. Login shell: `echo /opt/homebrew/bin/bash | sudo tee -a /etc/shells && chsh -s /opt/homebrew/bin/bash`.
4. Touch ID sudo: the defaults script prints the `/etc/pam.d/sudo_local` command.
5. Manual: AeroSpace under Privacy & Security → Accessibility; Raycast hotkey Cmd+Space (disable
   Spotlight's first); Chrome as default browser; 1Password → Developer → SSH agent; lock screen
   "require password immediately"; `gh auth login`.

## hessen (no root)

Dotfiles live in the NFS home (`/home/stud2022/mrueve`), tools come from mise in `~/.local/share/mise`.
Work happens in `/local/mrueve/home` (fast local disk).

```sh
mkdir -p ~/.local/bin && curl -fsSL get.chezmoi.io > /tmp/cz.sh && sh /tmp/cz.sh -b ~/.local/bin
~/.local/bin/chezmoi init --apply mariusrueve/dotfiles
```

SGE jobs run on other nodes: job environments are uv venvs on `/work` or `/scratch`
(`UV_PYTHON_INSTALL_DIR` points at NFS). `hessen/backup.sh` is the nightly backup cron
(deployed copy: `/local/mrueve/scripts/hessen-backup.sh`); chezmoi doesn't install it.
