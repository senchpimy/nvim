" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    	" File Explorer
	Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
"    	Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
	Plug 'nvim-lua/plenary.nvim'
	Plug 'https://github.com/nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    	" Auto pairs for '(' '[' '{'
	Plug 'tpope/vim-surround'
    	" Enviroment 
	Plug 'nvim-lualine/lualine.nvim'
    	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    	Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
Plug 'https://github.com/glepnir/dashboard-nvim'
"Plug 'senchpimy/dashboard-vim'
	Plug 'farmergreg/vim-lastplace'
	Plug 'Yggdroot/indentLine'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'https://github.com/phaazon/hop.nvim'
	Plug 'https://github.com/romainl/vim-cool'
	Plug 'https://github.com/lewis6991/gitsigns.nvim'
	Plug 'lambdalisue/suda.vim'
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } " CONFIG
	Plug 'ray-x/guihua.lua'  "lua GUI lib
	Plug 'ray-x/sad.nvim'
    
    "Autocompletion
"	Plug 'neovim/nvim-lspconfig'
"	Plug 'ms-jpq/coq_nvim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"	TEST
"	https://github.com/kylechui/nvim-surround
"	mattn/emmet-vim
"	AndrewRadev/tagalong.vim
"	mbbill/undotree
"	https://github.com/dkarter/bullets.vim
"	https://github.com/wellle/targets.vim
    	Plug 'akinsho/toggleterm.nvim'
    	Plug 'lmburns/lf.nvim'
call plug#end()

