install:
	mv ~/.vim ~/.vim.old
	mv ~/.vimrc ~/.vimrc.old
	mv ~/.screenrc ~/.screenrc.old
	rm -rf ~/.vim ~/.vimrc ~/.screenrc
	ln -s .vim ~/vim
	ln -s .vimrc ~/.vimrc
	ln -s .screenrc ~/.screenrc
