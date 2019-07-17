#!/usr/bin/env bash

# todo: use ansible to update
# todo: update haskell ide engine
# todo: clean build cache after building successfully
# todo: read the fucking manual of stack and cabal and fix update issue



echo "********************************************************************************"
echo "Copy config files..."
cp ~/.zshrc ~/.config/
cp ~/.profile ~/.config/
cp ~/.bashrc ~/.config/
cp ~/.bashrc ~/projects/config
cp ~/.zshrc ~/projects/config
cp ~/.profile ~/projects/config
echo "********************************************************************************"
echo "Update hosts files..."
cd ~/projects/web/hosts/
git pull
echo "********************************************************************************"
echo "Copy hosts files..."
sudo cp hosts-files/* /etc/
echo "********************************************************************************"
echo "Add hosts to support coursera..."
sudo echo "
52.84.246.90    d3c33hcgiwev3.cloudfront.net
52.84.246.252    d3c33hcgiwev3.cloudfront.net
52.84.246.144    d3c33hcgiwev3.cloudfront.net
52.84.246.72    d3c33hcgiwev3.cloudfront.net
52.84.246.106    d3c33hcgiwev3.cloudfront.net
52.84.246.135    d3c33hcgiwev3.cloudfront.net
52.84.246.114    d3c33hcgiwev3.cloudfront.net
52.84.246.90    d3c33hcgiwev3.cloudfront.net
52.84.246.227    d3c33hcgiwev3.cloudfront.net
" >>/etc/hosts
echo "********************************************************************************"
echo "Exchange CapsLock and Ctrl in X11..."
setxkbmap -option "ctrl:swapcaps"

export SDK_DIR="${HOME}/sdk"
echo "********************************************************************************"
echo "update idris from github repo..."
cd "${SDK_DIR}/Idris-dev"
git pull
make
make relib
make test
echo "********************************************************************************"
echo "update idris2 from github repo..."
cd "${SDK_DIR}/Idris2"
git pull
make idris2
make install

echo "********************************************************************************"
echo "modprobe bluetooth..."
modprobe bluetooth
echo "********************************************************************************"
echo "modprobe nvidia..."
sudo modprobe nvidia && sudo modprobe nvidia-modset && sudo modprobe nvidia-uvm
echo "********************************************************************************"
echo "Update npm..."

npm install npm@latest -g
npm install -g jshint
npm install -g bash-language-server
npm install -g vsce
echo "********************************************************************************"
echo "Update rbenv..."
cd ~/.rbenv
git pull

#echo "*******************************************************************************"
#echo "Update gvm"
#cd ~/projects/shell/gvm
#git pull
#rm -rf ~/.gvm
#sh binscript/gvm-installer
#source ~/.gvm/script/gvm

echo "********************************************************************************"
ccho "update agda-stdlib from agda-lib git repo"
source ~/.profile
# the $AGDA_STDLIB is defined in .profile
cd $AGDA_STDLIB
git pull
stack --stack-yaml=stack-8.6.5.yaml install
echo "********************************************************************************"
echo "Update ruby build..."
cd "$(rbenv root)"/plugins/ruby-build && git pull
echo "********************************************************************************"
echo "Navigat GPU status..."
nvidia-smi
# echo "********************************************************************************"
# echo "Update haskell ide engine..."
# cd ~/projects/haskell/haskell-ide-engine && git pull && make hie-8.6.3 && make build-doc-8.6.3
echo "********************************************************************************"
echo "Update flutter..."
flutter upgrade
echo "********************************************************************************"
echo "Update rust..."
rustup update
echo "********************************************************************************"
echo "Update cargo components..."
cargo install-update -a
echo "********************************************************************************"
echo "Update rust analyzer..."
npm install -g vsce
cd ~/projects/rust/rust-analyzer
cargo clean
git checkout -- Cargo.lock
git pull
cargo install-code
echo "********************************************************************************"
echo "Update IJava..."
cd ~/projects/java/IJava && cd IJava && git pull
./gradlew installKernel
echo "********************************************************************************"
echo "Update anaconda libraries..."
conda update --all -y
# echo "********************************************************************************"
# echo "Update servo..."
# cd ~/projects/rust/servo
# cargo clean
# git pull && ./mach build --release
echo "********************************************************************************"
echo "Update haskell stack libraries..."
stack upgrade --git
stack update
echo "********************************************************************************"
echo "Update OCaml libraries..."
opam update && opam upgrade -y
echo "********************************************************************************"
echo "Update system packages..."
sudo pacman -Syu --ignore emacs-git
yay emacs-git
echo "********************************************************************************"
echo "Done!"