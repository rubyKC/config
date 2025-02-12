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

echo "********************************************************************************"
#echo "modprobe nvidia..."
#sudo modprobe nvidia && sudo modprobe nvidia-modset && sudo modprobe nvidia-uvm
#echo "********************************************************************************"
echo "Update npm..."
npm install npm@latest -g
npm install -g jshint
npm install -g bash-language-server
npm install -g vsce
echo "********************************************************************************"
echo "Update rbenv..."
cd ~/.rbenv
git pull
echo "Update ruby build..."
cd "$(rbenv root)"/plugins/ruby-build && git pull
echo "********************************************************************************"
echo "Navigat GPU status..."
nvidia-smi
# echo "********************************************************************************"
# echo "Update haskell ide engine..."
# cd ~/projects/haskell/haskell-ide-engine && git pull && make hie-8.6.3 && make build-doc-8.6.3
echo "********************************************************************************"

echo "Update rust..."
rustup update
echo "********************************************************************************"
echo "Update cargo components..."
cargo install-update -a
echo "********************************************************************************"

echo "********************************************************************************"
echo "Update anaconda libraries..."
conda update --all -y
echo "********************************************************************************"
echo "Update servo..."
cd ~/projects/rust/servo
cargo clean
git pull && ./mach build --release
echo "********************************************************************************"
echo "Update haskell stack libraries..."
stack update
echo "********************************************************************************"
echo "Update OCaml libraries..."
opam update && opam upgrade -y
echo "********************************************************************************"
# echo "Update system packages..."
# yay
# echo "********************************************************************************"
echo "Done!"
