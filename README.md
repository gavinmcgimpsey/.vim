Installation
============

  Get this repo:

    git clone git://github.com/gavinmcgimpsey/.vim.git ~/.vim

  Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

  Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule update --init


Installing new plugins
======================

    git submodule add <url> bundle/<plugin_name>

