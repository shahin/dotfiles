source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# starship prompt
if ! type "$foobar_command_name" > /dev/null; then
    eval "$(starship init zsh)"
fi

# better zsh vi mode
source $HOME/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
