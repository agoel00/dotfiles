export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
echo -e "\033]6;1;bg;red;brightness;40\a"
echo -e "\033]6;1;bg;green;brightness;44\a"
echo -e "\033]6;1;bg;blue;brightness;52\a"

# Custom git function
function gitlit(){
    echo "Commit message: " -n
    read desc
    git add .
    git add -u
    git commit -m "$desc"
    git push origin master
}
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
#THEME
POWERLEVEL9K_MODE='nerdfont-complete'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# - Powerlevel9k theme configuration
# - - Prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status time battery)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true


# - - dir
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_VERBOSE='false'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=15
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
