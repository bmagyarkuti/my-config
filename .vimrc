" set tab size to 0, shift should match tab size
:set tabstop=2
:set shiftwidth=0
:set expandtab

" copy the indentation from previous line
:set autoindent

"PLUGINS
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
call plug#end()
