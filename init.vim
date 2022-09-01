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

set timeoutlen=2000

"Choosewin
nmap  n-  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

"Colores
let g:Hexokinase_highlighters = ['backgroundfull']
colorscheme dracula 

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
nmap nh <cmd>HopWord<CR>

set mouse=a
"Targets
let g:targets_aiAI = ['<Space>a', '<Space>i', '<Space>A', '<Space>I']

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
\      'descplug':"<h1>\n\t${child}|\n</h1>\n<div class=\"texto\">\n<a href=\"https://github.com/\"></a>\n</div>\n<div class=\"codigo\">\n</div>"
\    },
\  },
\}

"Bufferline
noremap <silent><TAB> :BufferLineCycleNext<CR>
noremap <silent><S-TAB> :BufferLineCyclePrev<CR>

"Harpoon
nmap <leader>+ <Cmd>lua require("harpoon.mark").add_file()<CR> <bar> <Cmd>echo 'File added to harpoon'<CR>
nmap <leader>- <Cmd>lua require("harpoon.mark").rm_file()<CR> <bar> <Cmd>echo 'File removed from harpoon'<CR>
"////////////////////////////////////////////////////////////////////////////////**LUA**////////////////////////////////////////////////////////
lua << END
--require ("lsp.init")

--ILUMMINATE
require('illuminate').configure()

--Hydra
local Hydra = require('hydra')
local window_hint = [[
^ ^^ Move     ^^Size   ^^   ^^Split   ^^   ^^Buffers
^ ^-------^^  ^^------^^   ^^----------^^ ^^---------
^^   ^^ _k_ ^^      ^^ _+_   ^ ^^  ^^_s_: horiz^^  ^^_r_: Inter
^ _h_ ^^ _w_^ ^ _l_ ^^  ^^_<_^^   ^^_>_  ^^  ^^_v_: vert^^   ^^_H_: Hor2Vert
^^   ^^ _j_ ^^      ^^ _-_   ^^   ^^_Q_: cerrar^^ ^^_J_:Vert2Hor
	            ^^_=_: igual^   
]]
Hydra({
   name = "Windows",
   hint=window_hint,
--   config = {},
    mode = 'n',
    body = '<C-w>',
    heads = {
    {'+','<Cmd>res +3<CR>',{desc='Aumentar horizontal'}},
    {'-','<Cmd>res -3<CR>',{desc='Disminuir horizontal'}},
    {'=','<Cmd>wincmd =<CR>',{desc='Igualar horizontal'}},
    {'<','<Cmd>vertical resize -3<CR>',{desc='Disminuir vertical'}},
    {'>','<Cmd>vertical resize +3<CR>',{desc='Aumentar vertical'}},
    {'s','<Cmd>wincmd s<CR>',{desc='Dividir Horizontal'}},
    {'l','<Cmd>wincmd l<CR>',{desc='Navegar Izquierda'}},
    {'h','<Cmd>wincmd h<CR>',{desc='Navegar Derecha'}},
    {'v','<Cmd>wincmd v<CR>',{desc='Dividr Vertical'}},
    {'w','<Cmd>wincmd w<CR>',{desc='Intercambiar cursor'}},
    {'j','<Cmd>wincmd j<CR>',{desc='Navegar Abajo'}},
    {'r','<Cmd>wincmd r<CR>',{desc='Intercambiar los buffers'}},
    {'k','<Cmd>wincmd k<CR>',{desc='Navegar Arriba'}},
    { 'Q', '<Cmd>try | close | catch | endtry<CR>' ,{desc='Cerrar buffer'}},
    {'H','<Cmd>wincmd H<CR>',{desc='Pasar de horizontal a vertical '}},
    {'J','<Cmd>wincmd J<CR>',{desc='Pasar de vertical a horizontal'}}},
})

--Winbar
--require('winbar').setup()

--LUALINE
require('lualine').setup()

--WHICH-KEY
require("which-key").setup {}

--TOGGLETERM
require("toggleterm").setup()

--Gitsigns
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = 'a', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = 'c', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = 'd', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}
-- HOP
require('hop').setup()

--DASHBOARD
local db = require('dashboard')
  db.preview_command="chafa -c 256 --fg-only --symbols braille"
  db.preview_file_path ="~/Pictures/Gifs/1643830177621.gif"
  db.custom_footer={" "}
  db.preview_file_height = 25
  db.preview_file_width = 100
  db.custom_center = {
      {icon = '  ',
      desc = 'Recently opened files                   ',
      action =  'Telescope oldfiles',},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'Lf',},
      {icon = '⇁  ',
      desc ='Harpoon                                ',
      action =  'lua require("harpoon.ui").toggle_quick_menu()',}
    }

require("lf").setup({
default_cmd = "lfrun",
height = 0.65, -- height of the *floating* window
width = 0.75, -- width of the *floating* window
escape_quit = true,
})

require('impatient')

require("bufferline").setup{}

--AUTOCOMPLETION

local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()


local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}


cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
   mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ["<CR>"] = cmp.mapping.confirm { select = true },
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  window = {
    documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
  },
  experimental = {
    ghost_text = false,
    native_menu = false,
  },
}
END
"////////////////////////////////////////////////////////////////////**LUA**////////////////////////////////////////////////////////////////////
