. ~/.config/zsh/base.zsh
. ~/.config/zsh/config/init.zsh
. ~/.config/zsh/plugins/init.zsh 

#
# oh-my-zsh
#

# source $HOME/.oh-my-zsh/oh-my-zsh.sh

#
# Prezto
# 

# source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

#
# Starship
#
#
if [[ "${widgets[zle-keymap-select]#user:}" == "starship_zle-keymap-select" || \
      "${widgets[zle-keymap-select]#user:}" == "starship_zle-keymap-select-wrapped" ]]; then
    zle -N zle-keymap-select "";
fi

eval "$(starship init zsh)"
