#
# ~/.bashrc
#

## Startup Commands
# SSH startup
eval "$(ssh-agent -s)"
eval "$(ssh-add ~/.ssh/id_ed25519)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Wayland Session Management
if uwsm check may-start && uwsm select; then
    exec uwsm start hyprland.desktop
fi

## Source External Scripts
source ~/.git-prompt.sh
source ~/.bash-aliases

## Exports
export SUDO_EDITOR=/bin/nvim
export GRIM_DEFAULT_DIR=~/Screenshots
export DEV_ENV=~/personal/dev
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.local/scripts

## Settings
HISTSIZE=1000
HISTFILESIZE=2000

# Shell
lmda=">"
sect="|"

FMT_BOLD="\[\e[1m\]"
FMT_DIM="\[\e[2m\]"
FMT_RESET="\[\e[0m\]"
FMT_UNBOLD="\[\e[22m\]"
FMT_UNDIM="\[\e[22m\]"
FG_BLACK="\[\e[30m\]"
FG_BLUE="\[\e[34m\]"
FG_CYAN="\[\e[36m\]"
FG_GREEN="\[\e[32m\]"
FG_YELLOW="\[\e[33m\]"
FG_GREY="\[\e[37m\]"
FG_MAGENTA="\[\e[35m\]"
FG_RED="\[\e[31m\]"
FG_WHITE="\[\e[97m\]"
BG_BLACK="\[\e[40m\]"
BG_BLUE="\[\e[44m\]"
BG_CYAN="\[\e[46m\]"
BG_GREEN="\[\e[42m\]"
BG_YELLOW="\[\e[43m\]"
BG_MAGENTA="\[\e[45m\]"

PS1="${FG_GREEN}${FMT_BOLD} \u@\W ${FG_BLUE}\$(__git_ps1 \"${sect}${FG_RED} git(%s) \")${FMT_RESET}${FMT_BOLD}${FG_GREEN}${sect} ${lmda} ${FMT_RESET}"

