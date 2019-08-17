# DISPLAY for X11
DISPLAY=192.168.0.116:0

# Correct colors for WSL terminal
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

# Android compile out director
export OUT_DIR_COMMON_BASE=/mnt/c/wsl/aosp_out

export EDITOR=vim

alias gld='git log --oneline --decorate'
