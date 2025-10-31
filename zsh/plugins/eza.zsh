zstyle ':omz:plugins:eza' 'icons' yes
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'header' yes
zstyle ':omz:plugins:eza' 'show-group' no
zstyle ':omz:plugins:eza' 'size-prefix' si
zstyle ':omz:plugins:eza' 'hyperlink' yes

alias ls='eza -l --group-directories-first --icons $eza_params'
alias l='eza --git-ignore --group-directories-first $eza_params'
alias ll='eza --all --header --long --group-directories-first $eza_params'
alias llm='eza --all --header --long --sort=modified --group-directories-first $eza_params'
alias la='eza --icons --group-directories-first -lbhHigUmuSa'
alias lx='eza --group-directories-first -lbhHigUmuSa@'
alias lt='eza --tree --group-directories-first $eza_params'
alias tree='eza --tree --group-directories-first $eza_params'
