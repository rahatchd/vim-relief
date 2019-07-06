#!/bin/bash
backup="bak_$(date +%F_%H-%M-%S)"
gruvdir=$PWD
line() {
    printf %$(tput cols)s | tr " " $1 && echo
}

echo
line = 
echo "~~~ gruvcube installer ~~~"
line \~
echo

if [ ! -d "$gruvdir/backup" ] ; then
    echo "creating backup directory"
    mkdir backup
    line -
fi
mkdir backup/$backup

dotfiles=( "bashrc" "bash_aliases" "vimrc" "tmux.conf" )
for dotfile in "${dotfiles[@]}" ; do
    gruvcube_dotfile="$gruvdir/src/.$dotfile"
    home_dotfile=~/."$dotfile"
    backup_dotfile="$gruvdir/backup/$backup/.$dotfile.bak"
    if [ -f $home_dotfile ]; then
        echo "* backing up $backup_dotfile *"
        cp $home_dotfile $backup_dotfile
    fi
    cp $gruvcube_dotfile $home_dotfile
done

profile_src="[ -r ~/.bashrc ] && source ~/.bashrc"
if [ -f ~/.bash_profile ] && ! grep -q "$profile_src" ~/.bash_profile; then
    echo "< you can now use bashrc in place of bash_profile >"
    echo "$profile_src" >> ~/.bash_profile
    source ~/.bash_profile
else
    source ~/.bashrc
fi

read -p "¿ do you want to edit .bashrc ? [Y/n] " yn
case $yn in
    [Yy]*)
        bashrc
        ;;
    *)
        echo "you can can edit your .bashrc anytime using the command bashrc"
esac

read -p "¿ do you want to edit .bash_aliases ? [Y/n] " yn
case $yn in
    [Yy]*)
        aliases
        ;;
    *)
        echo "you can can edit your .aliases anytime using the command customrc"
esac

if [ ! -f ~/.customrc ]; then
    cp $gruvdir/src/.customrc ~/.customrc
    read -p "¿ do you want to edit .customrc (not tracked by gruvcube) ? [Y/n] " yn
    case $yn in
        [Yy]*)
            customrc
            ;;
        *)
            echo "you can can edit your .customrc anytime using the command customrc"
    esac
fi

if [ ! -f ~/.secretsrc ]; then
    cp $gruvdir/src/.secretsrc ~/.secretsrc
    read -p "¿ do you want to edit .secretsrc (not tracked by gruvcube) ? [Y/n] " yn
    case $yn in
        [Yy]*)
            secretsrc
            ;;
        *)
            echo "you can can edit your .secretsrc anytime using the command secretsrc"
    esac
fi

if [ ! -d ~/.vim/bundle/Vundle.vim  ]; then
    echo "> installing Vundle (may require git login) <"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginClean +qall
vim +PluginInstall +qall
vim_python=$(vim --version | grep "+python")
if [[ $(vim --version | grep "+python3") ]]; then
    echo "< if you haven't already, manually install ycm (code autocompletion) using python 3.5 >"
elif [[ $(vim --version | grep "+python") ]]; then
    echo "< if you havent' already, mannualy install ycm (code autocompletion) using python 2.7 >"
else
    echo "¡ cannot install ycm (code autocompletion) if vim was built without python support !"
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "< installing tmux-plugin-manager (may require git login) >"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
if [ -n "$TMUX" ]; then
    tmux source-file ~/.tmux.conf
else
    tmux
fi

echo
line -
echo "~~~ DONE ~~~"
line = 
echo

