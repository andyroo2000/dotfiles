# GIT AND SUBLIME MUST BE INTALLED BEFORE RUNNING THIS SCRIPT

# ASK IF THE USER IS READY
echo -n "Git must be installed and configured before running this script. You must also have already install Sublime Text 3."
echo ""
echo -n "Have you done both?: "

# GET USER INPUT
read ready

if [ $ready == "yes" || $ready == "y" ]; then
	echo -n "Nice! You're ready to go!"
	echo ""

	# CLONE DOTFILES REPO INTO HOME DIRECTORY
	cd ~
	git clone git@github.com:andyroo2000/dotfiles.git

	# CREATE SYMLINKS FOR SUBLIME PREFERENCES AND PACKAGE SETTINGS
	ln -s ~/dotfiles/sublime_text/Package\ Control.sublime-settings Package\ Control.sublime-settings
	ln -s ~/dotfiles/sublime_text/Preferences.sublime-settings Preferences.sublime-settings
	ln -s ~/dotfiles/sublime_text/phpcs.sublime-settings phpcs.sublime-settings



	# CREATE SYMLINK FOR GLOBAL GIT IGNORE AND MAKE SURE GIT IS USING IT
	ln -s dotfiles/git/gitignore_global .gitignore_global
	git config --global core.excludesfile '~/.gitignore'


	# CREATE SYMLINKS FOR VIMRC AND CLONE VUNDLE PLUGIN MANAGER INTO THE RIGHT DIRECTORY
	ln -s dotfiles/vim/vimrc .vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

	# CREATE SYMLINK FOR CUSTOM BASH PROFILE
	ln -s dotfiles/bash/bash_profile .bash_profile

else
	echo -n "Get your life together and come back when you're ready."
	echo ""
fi
