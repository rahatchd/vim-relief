#!/bin/bash
backup="$(date +%F_%H-%M-%S)_bak"
line() {
    printf %$(tput cols)s | tr " " $1 && echo
}

echo "!gruvcube installer"
line =

if [ ! -d "$PWD/backup" ] ; then
    echo "creating backup directory"
    mkdir backup
    line -
fi
mkdir backup/$backup

dotfiles=( "bashrc" "bash_aliases" "vimrc" "tmux.conf" )
for dotfile in "${dotfiles[@]}" ; do
    gruvbox_dotfile="$PWD/src/.$dotfile"
    home_dotfile="$HOME/.$dotfile"
    backup_dotfile="$PWD/backup/$backup/.$dotfile.bak"

    if [ -f $home_dotfile ]; then
        echo "backing up $backup_dotfile"
        cp $home_dotfile $backup_dotfile
    fi

    echo "writing new .$dotfile"
    cp $gruvbox_dotfile $home_dotfile
    line -
done

echo "sourcing new rc"
source ~/.bashrc
line -

echo "installing vim plugins"
vim +PluginClean +qall
vim +PluginInstall +qall
line -

echo "installing tmux plugins"
line -
if [ -n "$TMUX" ]; then
    tmux source-file ~/.tmux.conf
else
    tmux
fi

line =
echo "DONE!"

