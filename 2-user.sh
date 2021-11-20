#!/usr/bin/env bash

cd ~
git clone "https://aur.archlinux.org/yay.git"
cd ${HOME}/yay
makepkg -si --noconfirm
cd ~

PKGS=(
'awesome-terminal-fonts'
'dxvk-bin' # DXVK DirectX to Vulcan
'lightly-git'
'mangohud-common'
'nerd-fonts-fira-code'
'nordic-darker-standard-buttons-theme'
'nordic-darker-theme'
'nordic-kde-git'
'nordic-theme'
'papirus-icon-theme'
'ttf-droid'
'ttf-hack'
'ttf-meslo' # Nerdfont package
'ttf-roboto'
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

export PATH=$PATH:~/.local/bin
cp -r $HOME/ArchDesktop/dotfiles/* $HOME/.config/
#pip install konsave
#konsave -i $HOME/ArchDesktop/kde.knsv
#sleep 1
#konsave -a kde

echo -e "\nDone!\n"
exit
