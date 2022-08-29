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
    	" Auto pairs for '(' '[' '{'
	Plug 'tpope/vim-surround' "+++
    	" Enviroment 
	Plug 'nvim-lualine/lualine.nvim'
    	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    	Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
	Plug 'https://github.com/glepnir/dashboard-nvim'
	Plug 'farmergreg/vim-lastplace'
	Plug 'Yggdroot/indentLine'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	Plug 'https://github.com/phaazon/hop.nvim'
	Plug 'https://github.com/romainl/vim-cool'
	Plug 'https://github.com/lewis6991/gitsigns.nvim'
	Plug 'lambdalisue/suda.vim'
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } 
    "Autocompletion
	"Plug 'neovim/nvim-lspconfig'
	"lazigit.nvim https://github.com/kdheepak/lazygit.nvim
	"Plug 'ms-jpq/coq_nvim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"	TEST
"	https://github.com/kylechui/nvim-surround
	Plug 'mattn/emmet-vim' "+++
	Plug 'https://github.com/dkarter/bullets.vim' "+++
	Plug 'https://github.com/wellle/targets.vim' "+++
	Plug 'https://github.com/folke/which-key.nvim' "+++
	Plug 'https://github.com/lewis6991/impatient.nvim' "+++
"	https://github.com/mfussenegger/nvim-treehopper
"	https://github.com/ziontee113/mynvimconfig/blob/master/lua/vim_schedule_demo.lua
"	https://github.com/nvim-treesitter/nvim-treesitter
	Plug 'https://github.com/Shougo/echodoc.vim' "+++
"	https://github.com/Raimondi/delimitMate
"	vim-repeat
	Plug 'https://github.com/Shougo/neopairs.vim' "+++
"	https://github.com/preservim/tagbar /// https://github.com/tenfyzhong/tagbar-makefile.vim
	Plug 'https://github.com/t9md/vim-choosewin' "+++
	Plug 'https://github.com/itchyny/vim-cursorword' "+++
	Plug 'https://github.com/terryma/vim-expand-region' "+++
	Plug 'https://github.com/andymass/vim-matchup' "+++
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
	Plug 'https://github.com/lewis6991/impatient.nvim' "+++
"	https://github.com/dpelle/vim-LanguageTool
	Plug 'https://github.com/anuvyklack/hydra.nvim' "+++
	Plug 'https://github.com/dhruvasagar/vim-table-mode' "+++
call plug#end()

