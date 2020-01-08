for file in $(ls -A); do
if ! [[ "$file" =~ ^(.git|media|setup.sh|remote-setup.sh|setup-corp-ad-ctc.sh|setup-wishabi.sh|README.md)$ ]]; then 
	ln -sf $PWD/$file $HOME/
fi
done
