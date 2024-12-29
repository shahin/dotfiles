# dotfiles

## Dependencies

These dotfiles assume the following tools:

- [homebrew](https://brew.sh)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- [fnm](https://github.com/Schniz/fnm) for nodejs to support vim/coc
```
brew install fnm
```
- [Github CLI]() for adding keys to clone dotfiles
```
brew install gh
```
- [ghostty](https://ghostty.org) terminal emulator
```
brew install --cask ghostty`
```
- [uv](https://github.com/astral-sh/uv) for python 
```
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Setup

Generate a key pair and copy the public key for adding to Github:
```
key_name=whatever
key_suffix="@example.com"

file_path="${HOME}/.ssh/id_ed25519.${key_name}"
title="${USER}+id_ed25519.${key_name}${key_suffix}"
ssh-keygen -t ed25519 -C "${title}" -f "${file_path}"
gh ssh-key add ${file_path}.pub --title "${title}"
```

Install the dotfiles and terminal prompt:
```
./install.sh
```
