# export FZF_BASE=/opt/homebrew/opt/fzf
# export FZF_COMPLETION_TRIGGER='~~'
# show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"
#
export FZF_CTRL_T_OPTS="--preview 'fzf-preview.sh {}'"
export FZF_ALT_C_OPTS="--preview 'fzf-preview.sh {}'"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#d0d0d0,fg+:#eb6a6a,bg:-1,bg+:#262626
  --color=hl:#5f87af,hl+:#5fd7ff,info:#afaf87,marker:#87ff00
  --color=prompt:#d7005f,spinner:#af5fff,pointer:#af5fff,header:#87afaf
  --color=border:#262626,label:#aeaeae,query:#d9d9d9
  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="> "
  --marker=">" --pointer="◆" --separator="─" --scrollbar="│"
  --layout="reverse" --info="right"'
#
# # Advanced customization of fzf options via _fzf_comprun function
# # - The first argument to the function is the name of the command.
# # - You should make sure to pass the rest of the arguments to fzf.
# _fzf_comprun() {
#   local command=$1
#   shift
#
#   case "$command" in
#   cd) fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
#   export | unset) fzf --preview "eval 'echo \${}'" "$@" ;;
#   ssh) fzf --preview 'dig {}' "$@" ;;
#   *) fzf --preview "$show_file_or_dir_preview" "$@" ;;
#   esac
# }

# _fzf_comprun() {
#   local command=$1
#   shift
#
#   case "$command" in
#   cd) fzf --preview 'fzf-preview.sh {}' "$@" ;;
#   export | unset) fzf --preview "fzf-preview.sh {}" "$@" ;;
#   ssh) fzf --preview 'dig {}' "$@" ;;
#   *) fzf --preview "fzf-preview.sh {}" "$@" ;;
#   esac
# }


# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# export FZF_PATH=/opt/homebrew/opt/fzf
