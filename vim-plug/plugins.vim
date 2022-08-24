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
	"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	Plug 'https://github.com/phaazon/hop.nvim'
	Plug 'https://github.com/romainl/vim-cool'
	Plug 'https://github.com/lewis6991/gitsigns.nvim'
	Plug 'lambdalisue/suda.vim'
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } " CONFIG
	"Plug 'ray-x/guihua.lua'  "lua GUI lib
	"Plug 'ray-x/sad.nvim'
    
    "Autocompletion
	"Plug 'neovim/nvim-lspconfig'
	"Plug 'ms-jpq/coq_nvim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"	TEST
"	https://github.com/kylechui/nvim-surround
"	mattn/emmet-vim
"	AndrewRadev/tagalong.vim
"	mbbill/undotree
"	https://github.com/dkarter/bullets.vim
"	https://github.com/wellle/targets.vim
"	https://github.com/folke/which-key.nvim
"	https://github.com/lewis6991/impatient.nvim
"	https://github.com/feline-nvim/feline.nvim
"	https://github.com/xuhdev/vim-latex-live-preview
"	https://github.com/mfussenegger/nvim-treehopper
"	https://github.com/ziontee113/mynvimconfig/blob/master/lua/vim_schedule_demo.lua
"	https://github.com/andweeb/presence.nvim
"	https://github.com/nvim-treesitter/nvim-treesitter
"	https://github.com/Shougo/echodoc.vim
"	https://github.com/tenfyzhong/CompleteParameter.vim
"	https://github.com/Raimondi/delimitMate
"	https://github.com/Shougo/neopairs.vim
"	https://github.com/preservim/tagbar /// https://github.com/tenfyzhong/tagbar-makefile.vim
"	https://github.com/t9md/vim-choosewin
"	https://github.com/itchyny/vim-cursorword
"	https://github.com/terryma/vim-expand-region
"	https://github.com/andymass/vim-matchup
"	https://github.com/simnalamburt/vim-mundo
"	https://github.com/ycm-core/YouCompleteMe
"	https://github.com/tree-sitter/tree-sitter
"	https://github.com/psliwka/vim-smoothie
"	https://github.com/sheerun/vim-polyglot
"	https://github.com/lewis6991/impatient.nvim
"	https://github.com/dpelle/vim-LanguageTool
"	https://github.com/stevearc/vim-arduino
"	https://github.com/anuvyklack/hydra.nvim
"	https://github.com/dhruvasagar/vim-table-mode
    	Plug 'akinsho/toggleterm.nvim'
    	Plug 'lmburns/lf.nvim'
call plug#end()

