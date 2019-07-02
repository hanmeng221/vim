sudo -u ubuntu wget https://dl.google.com/go/go1.12.linux-amd64.tar.gz
tar xzvf go1.12.linux-amd64.tar.gz -C /usr/local/
sudo -u ubuntu mkdir -p $HOME/go/{bin,pkg,src}
sudo -u ubuntu mkdir -m 775 ~/.vim
sudo -u ubuntu curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
apt install build-essential cmake python3-dev -y
sudo cp ./go.sh /etc/profile.d
sudo -u ubuntu cp ./.vimrc $HOME
sudo -u ubuntu mkdir  ~/.vim/plugged
rm go1.12.linux-amd64.tar.gz
echo "please run :PlugInstall and :GoInstallBinaries in vim and run vim_complete.sh"
