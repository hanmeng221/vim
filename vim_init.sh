wget https://dl.google.com/go/go1.12.linux-amd64.tar.gz
sudo tar xzvf go1.12.linux-amd64.tar.gz -C /usr/local/
mkdir -p $HOME/go/{bin,pkg,src}
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt install build-essential cmake python3-dev -y
sudo echo `export GOPATH=$HOME/go` > /etc/profile.d/go.sh
sudo echo `export GOROOT=/usr/local/go` > /etc/profile.d/go.sh
sudo echo `export PATH=$PATH:$GOROOT/bin:$GOPATH/bin` > /etc/profile.d/go.sh
cp ./.vimrc $HOME
mkdir -p ~/.vim/plugged
rm go1.12.linux-amd64.tar.gz
echo "please run :PlugInstall and :GoInstallBinaries in vim and run vim_complete.sh"
