" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    	" File Explorer
	Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
	Plug 'nvim-lua/plenary.nvim'
	Plug 'https://github.com/nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    	Plug 'lmburns/lf.nvim'
    	" Enviroment 
	Plug 'nvim-lualine/lualine.nvim'
    	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
	Plug 'https://github.com/glepnir/dashboard-nvim'
	Plug 'farmergreg/vim-lastplace'
	Plug 'Yggdroot/indentLine'
	Plug 'https://github.com/dhruvasagar/vim-table-mode' 
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	Plug 'https://github.com/phaazon/hop.nvim'
	Plug 'https://github.com/romainl/vim-cool'
	Plug 'lambdalisue/suda.vim'
	Plug 'https://github.com/dkarter/bullets.vim' 
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'https://github.com/andymass/vim-matchup' 
	Plug 'https://github.com/lewis6991/impatient.nvim' 
	Plug 'https://github.com/itchyny/vim-cursorword' 
	Plug 'https://github.com/t9md/vim-choosewin' 
	Plug 'https://github.com/folke/which-key.nvim' 
	Plug 'tpope/vim-surround' 
	Plug 'https://github.com/anuvyklack/hydra.nvim' 


	"	Configure
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } "+ 
	Plug 'mattn/emmet-vim' "+
	Plug 'https://github.com/wellle/targets.vim' "+
	Plug 'akinsho/toggleterm.nvim' , {'tag':'v2.*'} "++
	Plug 'https://github.com/lewis6991/gitsigns.nvim' "++
    	Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' } "++
	"Autocomplete
	Plug 'rafamadriz/friendly-snippets'
	Plug 'https://github.com/L3MON4D3/LuaSnip'
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'

	Plug 'https://github.com/neovim/nvim-lspconfig'
	Plug 'https://github.com/williamboman/nvim-lsp-installer'
	Plug 'hrsh7th/cmp-nvim-lsp'


	"	TEST
	Plug 'https://github.com/ThePrimeagen/harpoon'
	Plug 'https://github.com/is0n/jaq-nvim'
	Plug 'https://github.com/j-hui/fidget.nvim'
	Plug 'https://github.com/ghillb/cybu.nvim'
	Plug 'https://github.com/RRethy/vim-illuminate'
	Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
	Plug 'https://github.com/Raimondi/delimitMate'
	Plug 'https://github.com/MattesGroeger/vim-bookmarks'
	Plug 'https://github.com/windwp/nvim-autopairs'
"	Plug 'https://github.com/fgheng/winbar.nvim'
"	https://github.com/ziontee113/mynvimconfig/blob/master/lua/vim_schedule_demo.lua
"	https://github.com/preservim/tagbar /// https://github.com/tenfyzhong/tagbar-makefile.vim
	"spaceway.vim
"	https://github.com/tree-sitter/tree-sitter
"	https://github.com/sheerun/vim-polyglot
"	https://github.com/dpelle/vim-LanguageTool
"	https://github.com/lervag/vimtex
"	https://github.com/williamboman/mason.nvim
"	https://github.com/nvim-pack/nvim-spectre
"	https://github.com/justinmk/vim-sneak
call plug#end()

