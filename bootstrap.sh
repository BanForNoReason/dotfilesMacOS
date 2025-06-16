#!/usr/bin/env bash
set -euo pipefail

echo "› Checking Homebrew"
if ! command -v brew &>/dev/null; then
  echo "Homebrew missing" && exit 1
fi

echo "› Brew bundle (apps, CLI, fonts…) "
brew bundle --file="$HOME/dotfiles/Brewfile"

echo "› Installing/Updating GNU stow"
brew install stow

echo "› Symlinking dotfiles via stow"
cd "$HOME/dotfiles"
for dir in */ ; do
  [[ $dir == ".git/" ]] && continue
  stow --target="$HOME" "$dir"
done

echo "✔ Done – open a new terminal!"

