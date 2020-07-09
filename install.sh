#!/bin/sh

cp -r ./.local ~/test/ & echo "Scripts..."
wait
cp -r ./.config ~/test/ & echo "Configs..."
wait
cp ./.p10k.zsh ~/test/ & echo "Home Directory..."
cp ./.zshrc ~/test/
cp ./.xinitrc ~/test/
cp ./.zprofile ~/test/
wait
echo "Done!"
