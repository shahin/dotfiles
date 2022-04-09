source $HOME/.bashrc

# pure zsh prompt
# https://github.com/sindresorhus/pure
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# better zsh vi mode
source $HOME/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
