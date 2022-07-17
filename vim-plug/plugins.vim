" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'scrooloose/NERDTree'
    Plug 'preservim/nerdtree'
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    " Enviroment 
    Plug 'vim-airline/vim-airline'
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }

    Plug 'jreybert/vimagit'
    Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
    " Plug 'ryanoasis/vim-devicons' Icons without colours
    Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
"    Plug 'mhinz/vim-startify'
    Plug 'glepnir/dashboard-nvim'
    
    "Autocompletion
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

