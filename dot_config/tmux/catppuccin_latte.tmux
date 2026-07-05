#!/usr/bin/env bash

# Catppuccin Latte colors for Tmux

set -g mode-style "fg=#dd7878,bg=#ccd0da"

set -g message-style "fg=#dd7878,bg=#ccd0da"
set -g message-command-style "fg=#dd7878,bg=#ccd0da"

set -g pane-border-style "fg=#ccd0da"
set -g pane-active-border-style "fg=#dd7878"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#4c4f69,bg=#eff1f5"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#eff1f5,bg=#dd7878,bold] #S #[fg=#dd7878,bg=#eff1f5,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#eff1f5,bg=#eff1f5,nobold,nounderscore,noitalics]#[fg=#dd7878,bg=#eff1f5] #{prefix_highlight} #[fg=#ccd0da,bg=#eff1f5,nobold,nounderscore,noitalics]#[fg=#4c4f69,bg=#ccd0da] %Y-%m-%d  %I:%M %p #[fg=#ccd0da,bg=#ccd0da,nobold,nounderscore,noitalics]#[fg=#eff1f5,bg=#dd7878,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#eff1f5,bg=#eff1f5,nobold,nounderscore,noitalics]#[fg=#dd7878,bg=#eff1f5] #{prefix_highlight} #[fg=#ccd0da,bg=#eff1f5,nobold,nounderscore,noitalics]#[fg=#4c4f69,bg=#ccd0da] %Y-%m-%d  %H:%M #[fg=#ccd0da,bg=#ccd0da,nobold,nounderscore,noitalics]#[fg=#eff1f5,bg=#dd7878,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#8839ef,bg=#eff1f5"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#6c6f85,bg=#eff1f5"
setw -g window-status-format "#[fg=#eff1f5,bg=#eff1f5,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#eff1f5,bg=#eff1f5,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#eff1f5,bg=#ccd0da,nobold,nounderscore,noitalics]#[fg=#dd7878,bg=#ccd0da,bold] #I  #W #F #[fg=#ccd0da,bg=#eff1f5,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#d20f39]#[bg=#eff1f5]#[fg=#eff1f5]#[bg=#d20f39]"
set -g @prefix_highlight_output_suffix ""
