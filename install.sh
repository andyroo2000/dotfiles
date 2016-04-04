# GIT AND SUBLIME MUST BE INTALLED BEFORE RUNNING THIS SCRIPT

	# CREATE SYMLINKS FOR SUBLIME PREFERENCES AND PACKAGE SETTINGS
	cd ~/Library/Application Support/Sublime Text 3/Packages/User
	ln -s ~/dotfiles/sublime_text/Package\ Control.sublime-settings Package\ Control.sublime-settings
	ln -s ~/dotfiles/sublime_text/Preferences.sublime-settings Preferences.sublime-settings
	ln -s ~/dotfiles/sublime_text/phpcs.sublime-settings phpcs.sublime-settings

	# CREATE SYMLINK FOR GLOBAL GIT IGNORE AND MAKE SURE GIT IS USING IT
	cd ~
	ln -s dotfiles/git/gitignore_global .gitignore_global
	git config --global core.excludesfile '~/.gitignore'

	# CREATE SYMLINKS FOR VIMRC AND CLONE VUNDLE PLUGIN MANAGER INTO THE RIGHT DIRECTORY
	ln -s dotfiles/vim/vimrc .vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

	# CREATE SYMLINK FOR CUSTOM BASH PROFILE
	ln -s dotfiles/bash/bash_profile .bash_profile

