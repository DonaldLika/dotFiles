#!/bin/bash

sudo cp -a fonts/. ~/.local/share/fonts
echo "Fonts added"

echo "Applying user settings"
sudo mv ~/.config/Code/User/settings.json ~/.config/Code/User/settings-backup.json
sudo cp settings.json ~/.config/Code/User
echo "New Settings applied. Old settings are backed up at: settings-backup.json"

installExtensions() {
    FILENAME=.extensions
    cat $FILENAME | while read LINE; do
        code --install-extension $LINE
    done
}

read -p "Do you want to install extensions? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    installExtensions
fi


