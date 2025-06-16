# Dotfiles

These are my macOS dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/) and versioned using a [bare Git repo](https://www.atlassian.com/git/tutorials/dotfiles). They make bootstrapping any new Mac as fast and painless as possible.

## Includes

-  **zsh** – Shell config with Powerlevel10k
-  **Alacritty** – Terminal theme and Nerd Font
-  **Neovim** – Placeholder config
-  **Tmux** – Placeholder config
-  **VS Code** – Settings and extensions
-  **Bootstrap script** – Installs everything via Homebrew

## Setup on a new machine

```bash
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

git clone --bare git@github.com:banfornoreason/dotfilesMacOS.git $HOME/Developer/dotfiles.git
alias dotfiles='/usr/bin/git --git-dir=$HOME/Developer/dotfiles.git --work-tree=$HOME'
dotfiles checkout
source ~/.zshrc
~/bootstrap.sh

