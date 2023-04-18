:set autoindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab
:set softtabstop=4
:set incsearch
:set ignorecase
:set smartcase
:set showmatch
:set hlsearch
:set nu
:set rnu
:set nowrap

:set termguicolors
:set background=dark


call plug#begin('~/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'https://github.com/mcchrish/zenbones.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'kvrohit/mellow.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'lifepillar/vim-wwdc16-theme'
Plug 'smallwat3r/vim-mono-sw'
Plug 'lurst/austere.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/andreasvc/vim-256noir'
Plug 'ntk148v/komau.vim' " Vim-plug

call plug#end()


" Key mappings
:let mapleader = "\<Space>"
:set mouse

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <leader>l $
vnoremap <leader>l $
nnoremap <leader>h _
vnoremap <leader>h _

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <esc> :m-2<CR>
inoremap <S-Up> <Esc>:m-2<CR>
vnoremap <S-Down> <Esc>:m+<CR>
vnoremap <S-Down> <Esc>:m+<CR>
inoremap jj <esc>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" let g:NERDTreeDirArrowExpandable="+"
" let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" uulet g:zenbones_solid_line_nr = v:true
" uulet g:zenbones_darken_comments = 45
" uulet g:zenbones_italic_comments = v:false

let g:zenbones_combat = 1
:colorscheme sunbather

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  options = { theme = 'horizon' },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END

