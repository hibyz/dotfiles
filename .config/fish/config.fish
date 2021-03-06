set fish_greeting
set fish_theme bobthefish
set -x TERM xterm-256color
set fish_plugins theme
set -U FZF_LEGACY_KEYBINDINGS 0

# fish-dot
set -U DOT_REPO https://github.com/hibyz/dotfiles.git
set -U DOT_DIR ~/.dotfiles
set -U DOT_SCR ~/.dot

set -g FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"

# gvm
function gvm
  bass source ~/.gvm/scripts/gvm ';' gvm $argv
end

# function go
#   gvm use go1.11.2 ';' go $argv
# end
# 
set -x GOROOT_BOOTSTRAP GOROOT

# alias
alias ll='ls -AlF'
alias ls='ls -F --color=auto'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# for cask
set -x EMACS emacs
set PATH $HOME/.cask/bin $PATH
# pyenv
set -x PATH $HOME/.pyenv/bin $PATH
source (pyenv init - | psub)

set PATH /sbin $PATH

# for bobthefish
set -g theme_display_git yes
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant no
set -g theme_display_docker_machine no
set -g theme_display_k8s_context no
set -g theme_display_hg no
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date yes
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes


gvm use go1.11.2 --default


