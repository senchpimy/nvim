if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

"Vim
source $HOME/.config/nvim/vim-plug/plugins.vim
set number relativenumber
set nu ru
let mapleader="|"

"Colores
let g:Hexokinase_highlighters = ['backgroundfull']
colorscheme pywal

"Indetlines
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 0
nmap <space>l <cmd>IndentLinesToggle<CR>
autocmd FileType python IndentLinesToggle 

"MarkdownPreview
let g:mkdp_browser = 'qutebrowser'
nmap <C-p> <cmd>MarkdownPreview<CR>

nmap <space>r <cmd>Lf<CR>
nnoremap <space>v <cmd>CHADopen<cr>
nmap <C-o> <cmd>Telescope oldfiles<CR>
nmap <C-b> <cmd>Telescope buffers<CR>
nmap <space>f <cmd>Telescope find_files<CR>
nmap <C-h> <cmd>HopWord<CR>

"g:echodoc#enable_at_startup=1

"set mouse=a

"Emmet
let g:user_emmet_install_global = 0
let g:user_emmet_mode='a'    "enable all function in all mode.
autocmd FileType html,css EmmetInstall
let g:user_emmet_settings = {
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'descplug':"<h1>\n\t${child}|\n</h1>\n<div class=\"text\">\n<a href=\"https://github.com/\"></a>\n</div>\n<div class=\"codigo\">\n</div>"
\    },
\  },
\}

"////////////////////////////////////////////////////////////////////////////////**LUA**////////////////////////////////////////////////////////
lua << END
require('lualine').setup()
--require('gitsigns').setup()
require('hop').setup()
local db = require('dashboard')
  db.preview_command="chafa -c 256 --fg-only --symbols braille"
  db.preview_file_path ="~/Pictures/Gifs/1643830177621.gif"
  db.custom_footer={" "}
  db.preview_file_height = 25
  db.preview_file_width = 100
  db.custom_center = {
      {icon = '  ',
      desc = 'Recently opened files                   ',
      action =  'Telescope oldfiles',
      shortcut = 'SPC f h'},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'Lf',
      shortcut = 'SPC f b'},
    }
require("lf").setup({
default_cmd = "lfrun",
height = 0.65, -- height of the *floating* window
width = 0.75, -- width of the *floating* window
escape_quit = true,
})
require('impatient')
END
"////////////////////////////////////////////////////////////////////**LUA**////////////////////////////////////////////////////////////////////
