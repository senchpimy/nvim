" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    	" File Explorer
	Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
    	Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
	Plug 'nvim-lua/plenary.nvim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'https://github.com/nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    	" Auto pairs for '(' '[' '{'
	Plug 'tpope/vim-surround'
    	" Enviroment 
    	Plug 'vim-airline/vim-airline' "ojo que empexamos
    	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    	Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
	Plug 'senchpimy/dashboard-vim'
	Plug 'farmergreg/vim-lastplace'
	Plug 'Yggdroot/indentLine'
	"Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
	"Plug 'norcalli/nvim-colorizer.lua'
	Plug 'lambdalisue/suda.vim'
	Plug 'nvim-lualine/lualine.nvim'
    	Plug 'jreybert/vimagit'
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
    	" Plug 'ryanoasis/vim-devicons' Icons without colours
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
	Plug 'lervag/vimtex'
	Plug 'dpelle/vim-LanguageTool'
    
    "Autocompletion
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

