#!/bin/bash
backup="bak_$(date +%F_%H-%M-%S)"
reliefdir=$PWD

echo "installing vim-relief"

# backups
if [ ! -d "$reliefdir/backup" ] ; then
    echo "creating backups directory : $reliefdir/backup"
    mkdir backup
fi
mkdir backup/$backup

# copy dotfiles
dotfiles=( "reliefrc" "vimrc" "tmux.conf" )
for dotfile in "${dotfiles[@]}" ; do
    relief_dotfile="$reliefdir/src/.$dotfile"
    home_dotfile=~/."$dotfile"
    backup_dotfile="$reliefdir/backup/$backup/.$dotfile.bak"
    if [ -f $home_dotfile ] ; then
        echo "backing up : $backup_dotfile"
        cp $home_dotfile $backup_dotfile
    fi
    cp $relief_dotfile $home_dotfile
done

# source dotfiles
echo "source ~/.reliefrc" >> ~/.bashrc

# vim plugin manager
if [ ! -d ~/.vim/autoload/plug.vim  ]; then
    echo "installing vim-plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
vim +PlugInstall
echo "you can edit your .vimrc by using the alias vimrc"

# tmux plugin manager
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "installing tmux-plugin-manager (may require git login)"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
if [ -n "$TMUX" ]; then
    tmux source-file ~/.tmux.conf
else
    tmux
fi
echo "you can edit your .tmux.conf by using the alias tmuxconf"

echo "installation complete"

