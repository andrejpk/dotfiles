for file in $(ls -A); do
if ! [[ "$file" =~ ^(.git|media|setup.sh|remote-setup.sh|setup-corp-ad-ctc.sh|setup-wishabi.sh|README.md)$ ]]; then 
	ln -sf $PWD/$file $HOME/
fi
done

# install go
if [ -z $GOPATH ]; then
	wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
fi

# install powerline go
if [ -z $GOPATH ]; then
  go get -u github.com/justjanne/powerline-go
fi

# vim plugged
sudo apt-get install cmake -y
vim -c :PlugInstall -c :q! -c :q!

# ycm 
python3 ~/.vim/plugged/youcompleteme/install.py

# Azure CLI
if !hash az 2>/dev/null; then
     	curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
fi
