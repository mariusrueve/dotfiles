# Mac packages. Applied by chezmoi (run_onchange_before_10-brew-bundle.sh) whenever this file changes.
# `brew bundle cleanup --file ~/.local/share/chezmoi/Brewfile` lists what is installed but not here.
tap "mariusrueve/tap"
tap "nikitabobko/tap"
tap "felixkratz/formulae"

# Shell + CLI
brew "bash"
brew "bash-completion@2"
brew "git"
brew "gh"
brew "neovim"
brew "starship"
brew "eza"
brew "bat"
brew "zoxide"
brew "fzf"
brew "fd"
brew "ripgrep"
brew "jq"
brew "tree"
brew "wget"
brew "lazygit"
brew "btop"
brew "yazi"
brew "tmux"
brew "direnv"
brew "uv"
brew "node"        # Mason installs several LSPs via npm
brew "tree-sitter-cli" # LazyVim builds parsers with it
brew "fastfetch"
brew "codex"
brew "pam-reattach" # Touch ID sudo inside tmux
brew "felixkratz/formulae/borders", restart_service: :changed

# Window manager + fonts
cask "nikitabobko/tap/aerospace"
cask "font-jetbrains-mono-nerd-font"
cask "font-inter"

# Apps
cask "kitty"          # config in ~/.config/kitty
cask "raycast"        # launcher (Cmd+Space), clipboard history, emoji picker
cask "google-chrome"  # default browser
cask "firefox"
cask "spotify"
cask "discord"
cask "skim"           # PDF viewer with SyncTeX for vimtex
cask "mactex-no-gui"  # TeX Live for vimtex / latexmk
cask "1password"
cask "1password-cli"
cask "mattermost"
cask "claude"
cask "claude-code"
cask "chatgpt"
cask "zotero"
cask "obsidian"
cask "wispr-flow"
cask "mariusrueve/tap/labroute" # ssh + shell hooks in ~/.ssh/config and ~/.bashrc
