" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'ap/vim-css-color'
    Plug 'tpope/vim-surround'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " File Explorer
    Plug 'scrooloose/NERDTree'
    Plug 'morhetz/gruvbox'
    
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ap/vim-css-color'                                                                                                    
    Plug 'ryanoasis/vim-devicons'                                                                                              
    Plug 'scrooloose/nerdcommenter'                                                                                            
    Plug 'jiangmiao/auto-pairs'                                                                                                
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

call plug#end()
