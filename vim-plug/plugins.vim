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
	Plug 'akinsho/toggleterm.nvim' , {'tag':'v2.*'}
    	Plug 'lmburns/lf.nvim'
    	" Enviroment 
	Plug 'nvim-lualine/lualine.nvim'
    	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    	Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
	Plug 'https://github.com/glepnir/dashboard-nvim'
	Plug 'farmergreg/vim-lastplace'
	Plug 'Yggdroot/indentLine'
	Plug 'https://github.com/dhruvasagar/vim-table-mode' 
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	Plug 'https://github.com/phaazon/hop.nvim'
	Plug 'https://github.com/romainl/vim-cool'
	Plug 'https://github.com/lewis6991/gitsigns.nvim'
	Plug 'lambdalisue/suda.vim'
	Plug 'https://github.com/dkarter/bullets.vim' 
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
"	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'https://github.com/andymass/vim-matchup' 
	Plug 'https://github.com/lewis6991/impatient.nvim' 
	Plug 'https://github.com/itchyny/vim-cursorword' 
	Plug 'https://github.com/t9md/vim-choosewin' 
	"	Configure
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } "+ 
	Plug 'mattn/emmet-vim' "+
	Plug 'https://github.com/wellle/targets.vim' "+
	"Autocomplete
	Plug 'rafamadriz/friendly-snippets'
	Plug 'https://github.com/L3MON4D3/LuaSnip'
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	"	TEST
	Plug 'https://github.com/folke/which-key.nvim' "+++
	Plug 'tpope/vim-surround' "+++
	Plug 'https://github.com/Shougo/echodoc.vim' "+++
	Plug 'https://github.com/Shougo/neopairs.vim' "+++
	Plug 'https://github.com/terryma/vim-expand-region' "+++
"	https://github.com/kylechui/nvim-surround
"	https://github.com/mfussenegger/nvim-treehopper
"	https://github.com/ziontee113/mynvimconfig/blob/master/lua/vim_schedule_demo.lua
"	https://github.com/nvim-treesitter/nvim-treesitter
"	https://github.com/Raimondi/delimitMate
"	vim-repeat
"	https://github.com/preservim/tagbar /// https://github.com/tenfyzhong/tagbar-makefile.vim
	"Plug 'neovim/nvim-lspconfig'
	"lazigit.nvim https://github.com/kdheepak/lazygit.nvim
	"Plug 'ms-jpq/coq_nvim'
	"zepl.vim
	"mucomplete
	"vim-mucomplete-minisnip
	"float-preview-nvim
	"vim-minisnip
	"vim-tmux-navigator
	"spaceway.vim
	"vim-troff
	"speeddating.vim
"	https://github.com/tree-sitter/tree-sitter
"	https://github.com/sheerun/vim-polyglot
"	rafamadriz/friendly-snippets
"	https://github.com/dpelle/vim-LanguageTool
"	https://github.com/ThePrimeagen/harpoon
"	https://github.com/is0n/jaq-nvim
"	https://github.com/j-hui/fidget.nvim
"	https://github.com/fgheng/winbar.nvim
"	https://github.com/ghillb/cybu.nvim
"	https://github.com/RRethy/vim-illuminate
"	https://github.com/michaelb/sniprun
"	https://github.com/lervag/vimtex
"	https://github.com/karb94/neoscroll.nvim
"	https://github.com/williamboman/mason.nvim
"	https://github.com/nvim-pack/nvim-spectre
"	https://github.com/MattesGroeger/vim-bookmarks
"	https://github.com/monaqa/dial.nvim
"	https://github.com/michaelb/sniprun
"	https://github.com/hrsh7th/nvim-cmp
"	https://github.com/hrsh7th/cmp-buffer
"	https://github.com/windwp/nvim-autopairs
"	https://github.com/justinmk/vim-sneak
"	https://github.com/Shougo/deoplete.nvim
"	https://github.com/akinsho/toggleterm.nvim
	Plug 'https://github.com/anuvyklack/hydra.nvim' "+++
call plug#end()

