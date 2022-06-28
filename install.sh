#!/usr/bin/env bash

set -euo pipefail
set -x

# install dotfiles manager
rm -rf $HOME/.homesick/repos/homeshick && \
    git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

# install starship prompt
rm install-starship.sh && \
    curl -sS https://starship.rs/install.sh >install-starship.sh && \
    chmod 755 install-starship.sh && \
    ./install-starship.sh --yes

# add dotfiles
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone --batch shahin/dotfiles
homeshick link dotfiles
