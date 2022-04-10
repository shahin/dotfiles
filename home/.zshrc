source "$HOME/.homesick/repos/homeshick/homeshick.sh"

source "$HOME/.alias"
source "$HOME/.env"

# starship prompt
if ! type "$foobar_command_name" > /dev/null; then
    eval "$(starship init zsh)"
fi

# better zsh vi mode
source $HOME/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# initialize fzf
# must be after sourcing zsh-vi-mode.plugin.zsh
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
