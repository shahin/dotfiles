source "$HOME/.homesick/repos/homeshick/homeshick.sh"

source "$HOME/.alias"
source "$HOME/.env"

# starship prompt
if ! typeset -f starship_zle-keymap-select > /dev/null; then
    eval "$(starship init zsh)"
fi

# better zsh vi mode
source $HOME/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# initialize fzf
# must be after sourcing zsh-vi-mode.plugin.zsh
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')

FZF_DEFAULT_COMMAND="rg --files --hidden --sort-files -g '!.git/' 2>/dev/null"
FZF_CTRL_T_COMMAND="rg --files --hidden --sort-files -g '!.git/' 2>/dev/null"

_fzf_compgen_path() {
  rg --files --hidden . 2>/dev/null
}

_fzf_compgen_dir() {
  rg --hidden --sort-files --files --null . 2>/dev/null | xargs -0 dirname | uniq
}

# history config
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space

# fnm
FNM_PATH="/Users/shahin/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/shahin/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
export PATH="/Users/shahin/.pixi/bin:$PATH"
