wget https://dl.google.com/go/go1.12.linux-amd64.tar.gz
sudo tar xzvf go1.12.linux-amd64.tar.gz -C /usr/local/
mkdir -p $HOME/go/{bin,pkg,src}
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt install build-essential cmake python3-dev
sudo echo `export GOPATH=$HOME/go` > /etc/profile.d/go.sh
sudo echo `export GOROOT=/usr/local/go` > /etc/profile.d/go.sh
sudo echo `export PATH=$PATH:$GOROOT/bin:$GOPATH/bin` > /etc/profile.d/go.sh
sudo cp ./.vimrc $HOME
sudo mkdir -p ~/.vim/plugged
sudo vi -c "PlugInstall"
sudo vi -c "GoInstallBinaries"
cd ~/.vim/plugged/YouCompleteMe && python3 install.py --go-completer 

