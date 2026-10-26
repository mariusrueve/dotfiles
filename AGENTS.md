# Agent guide

chezmoi source for Marius' MacBook (macOS, Homebrew) and hessen (uni server, openSUSE, **no root**,
reached via `ssh hessen`). See README.md for layout and conventions.

- Edit files here (the source), never the targets in `$HOME` directly; check with `chezmoi diff`.
- `chezmoi apply` is fine to run on the Mac; it may run `brew bundle`. No sudo: anything needing root
  (`/etc/shells`, `/etc/pam.d`) goes to Marius as a command to run.
- Templates: `.isMac`, `.isHessen`, `.email`. Test with `chezmoi execute-template < file.tmpl`.
- Keep ssh keys out of the repo: private keys live in 1Password; only `zbh.pub` is stored.
- Commit/push only when asked.
- Keep AeroSpace binds (`dot_aerospace.toml`) Option-based: Option = window-manager key.
