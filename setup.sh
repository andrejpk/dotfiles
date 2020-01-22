for file in $(ls -A); do
if ! [[ "$file" =~ ^(.git|media|setup.sh|remote-setup.sh|setup-corp-ad-ctc.sh|setup-wishabi.sh|README.md)$ ]]; then 
	ln -sf $PWD/$file $HOME/
fi
done

# install powerline go
if (GOPATH) then
  go get -u github.com/justjanne/powerline-go
fi

# vim plugged
vim -c :PlugInstall -c :q! -c :q!

# ycm 
python3 ~/.vim/plugged/youcompleteme/install.py

