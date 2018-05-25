#!/bin/bash
echo "Adding jeffreywildman/homebrew-virt-manager repo...";
brew tap jeffreywildman/homebrew-virt-manager;

echo "Installing xquartz...";
brew cask install xquartz;

echo "Installing virt-manager and virt-viwer...";
brew install virt-manager virt-viewer;

echo "Fixing python issues...";
brew reinstall pygobject pygobject3;
mkdir -p "$HOME/Library/Python/2.7/lib/python/site-packages";
echo 'import site; site.addsitedir("/usr/local/lib/python2.7/site-packages")' >> "$HOME/Library/Python/2.7/lib/python/site-packages/homebrew.pth"

echo "Downloading app icon for virt-manager...";
wget "https://www.dropbox.com/s/2qwcqtnl66alu1c/virt-manager.zip" -P $HOME/Downloads;
open $HOME/Downloads/virt-manager.zip;
Sleep 2;
sudo cp -rf $HOME/Downloads/virt-manager/* /Applications/Utilities/;
rm $HOME/Downloads/virt-manager.zip;
rm -rf $HOME/Downloads/virt-manager;

