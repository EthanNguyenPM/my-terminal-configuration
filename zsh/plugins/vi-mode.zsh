# 
# oh-my-zsh
#

# VI_MODE_SET_CURSOR=true
# VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
#
# bindkey -M viins 'jk' vi-cmd-mode

export ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
function my_init() {
  [ -f $FZF_PATH/fzf.zsh ] && source $FZF_PATH/fzf.zsh
}
zvm_after_init_commands+=(my_init)
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
