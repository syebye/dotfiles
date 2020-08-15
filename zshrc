[ -z $DISPLAY ] && export DISPLAY=127.0.0.1:0.0

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Correct colors for WSL terminal
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

export EDITOR=/usr/bin/nvim
export GIT_EDITOR=/usr/bin/nvim

alias gld='git log --oneline --decorate'
