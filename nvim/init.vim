call plug#begin()
Plug 'tpope/vim-fugitive'
noremap gs :G<CR>
noremap gl :Gclog<CR>

Plug 'nvim-lua/plenary.nvim'

Plug 'michal-h21/vim-zettel'
let g:zettel_link_format="[[%link]"
Plug 'vimwiki/vimwiki'
let g:vimwiki_key_mappings = {
            \ 'all_maps': 1,
            \ 'global': 1,
            \ 'headers': 1,
            \ 'text_objs': 1,
            \ 'table_format': 1,
            \ 'table_mappings': 0,
            \ 'lists': 1,
            \ 'links': 1,
            \ 'html': 1,
            \ 'mouse': 0,
            \ }

let g:vimwiki_list = [{'path': '~/syns/note/',
            \ 'path_html': '~/syns/note/publish_html/',
            \ 'syntax': 'markdown',
            \ 'ext': '.md',
            \ 'list_margin': 0}]

Plug 'prettier/vim-prettier', {
            \ 'do': 'yarn install',
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

nmap <Leader>P <Plug>(Prettier)

Plug 'ferrine/md-img-paste.vim'
let g:mdip_imgdir = '.'
autocmd FileType markdown noremap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

Plug 'phaazon/hop.nvim'
map f :HopChar1<CR>
noremap f :HopChar1<CR>

Plug 'kyazdani42/nvim-web-devicons'

Plug 'kyazdani42/nvim-tree.lua'

let g:nvim_tree_side = 'right'
let g:nvim_tree_follow = 1
let g:nvim_tree_special_files = [ 'README.md', 'Makefile', 'MAKEFILE' ]
nnoremap <leader>t :NvimTreeToggle<CR>

Plug 'stsewd/fzf-checkout.vim'
noremap gc :GCheckout<CR>

Plug 'kevinhwang91/vim-ibus-sw'

Plug 'dkarter/bullets.vim'
let g:bullets_enabled_file_types = [
            \ 'markdown',
            \ 'text',
            \ 'gitcommit',
            \ 'scratch'
            \]

Plug 'wellle/tmux-complete.vim'

Plug 'jdhao/better-escape.vim'
let g:better_escape_interval = 200
let g:better_escape_shortcut = 'jj'

Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css,markdown EmmetInstall

Plug 'christoomey/vim-tmux-navigator'

Plug 'tpope/vim-surround'

Plug 'alvan/vim-closetag'

Plug 'windwp/nvim-autopairs'

Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1
map mm <Plug>NERDCommenterToggle

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

inoremap <expr> <c-f><c-f> fzf#vim#complete#path('rg --files')
inoremap <expr> <c-f><c-w> fzf#vim#complete#word()
noremap <leader>f :Files<cr>
noremap <leader>b :Buffers<CR>
noremap <leader>F :Files ~<CR>
noremap <leader>r :Rg<CR>
noremap <c-p> :Commands<CR>
noremap // :BLines<CR>

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
set hidden
set shortmess+=c
set signcolumn=auto
set updatetime=100
let g:coc_global_extensions = [
            \ "coc-css",
            \ "coc-html",
            \ "coc-snippets",
            \ "coc-emmet",
            \ "coc-sql",
            \ "coc-clangd",
            \ "coc-tsserver",]

inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

inoremap <silent><expr> <c-n> coc#refresh()

noremap <silent> [g <Plug>(coc-diagnostic-prev)
noremap <silent> ]g <Plug>(coc-diagnostic-next)

vmap <leader>=  <Plug>(coc-format-selected)
nmap <leader>=  <Plug>(coc-format-selected)

Plug 'mbbill/undotree'
set undodir=~/syns/ok/undodir
set undofile
nnoremap <leader>u :UndotreeToggle<CR>
let g:undotree_WindowLayout = 3

Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
let g:mkdp_markdown_css = '~/.config/nvim/stuff/github-markdown.css'

Plug 'romainl/vim-cool'

set hlsearch
set ignorecase
set incsearch
set smartcase
set magic
nnoremap n nzzzv
nnoremap N Nzzzv
noremap J mzJ`z

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
let g:rainbow_conf = {
            \	'separately': {
                \		'html': 0,
                \	}
                \}

Plug 'gregsexton/MatchTag', { 'for': 'html' }

Plug 'norcalli/nvim-colorizer.lua'
autocmd BufRead,BufNewFile * :ColorizerAttachToBuffer
Plug 'lukas-reineke/indent-blankline.nvim'
if &diff
    let g:indent_blankline_enabled = v:false
endif
let g:indent_blankline_char = '▏'
let g:indent_blankline_filetype_exclude = [
            \ 'help', 'yaml'
            \]

Plug 'lewis6991/gitsigns.nvim'

Plug 'hoob3rt/lualine.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'mcchrish/zenbones.nvim'

Plug 'rktjmp/lush.nvim'

Plug 'sainnhe/gruvbox-material'
call plug#end()

syntax enable
set termguicolors

runtime ./themeControl.vim

set cursorline

autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set tabstop=4 softtabstop=4 noet
set shiftwidth=4
autocmd BufRead,BufNewFile *.scss,*.css,*.html setlocal tabstop=2
	    \ shiftwidth=2
	    \ softtabstop=2
set expandtab

set number relativenumber

set nocompatible
filetype plugin indent on
set encoding=UTF-8
set mouse=a
set clipboard=unnamedplus

set autoindent
set smartindent
set autoread
set autowrite
set nobackup
set noswapfile
set lazyredraw
set nowritebackup
set inccommand=split
set scrolloff=5

nnoremap + <C-a>
nnoremap - <C-x>

vmap < <gv
vmap > >gv

map <space> <leader>

noremap <C-t> :tabnew<Return>
noremap <S-e> gT
noremap <S-r> gt

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

noremap <space>s :setlocal spell! spell?<CR>

command! Reload execute "source ~/.config/nvim/init.vim"

noremap ss :split<Return><C-w>w
noremap sv :vsplit<Return><C-w>w

map <silent> <Right> <C-w><
map <silent> <Down> <C-W>-
map <silent> <Up> <C-W>+
map <silent> <Left> <C-w>>

noremap cd. :cd %:h<CR>
noremap cd :cd<CR>

command! W execute "w !sudo tee %"

noremap Y y$

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap [ [<c-g>u

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

augroup General
    autocmd!
    autocmd BufNewFile *.cpp :read ~/.config/nvim/stuff/cppTemplate.cpp | normal!kdd3j
    autocmd BufNewFile *.fish  :call CheckFishFile()
    autocmd BufNewFile *.py :call CheckPyFile()
    autocmd BufNewFile *.sh  :call CheckShFile()
    autocmd BufNewFile *.html  :read ~/.config/nvim/stuff/htmlTemplate.html | normal!kdd6j

    autocmd BufWritePre * :call TrimWhitespace()
augroup END

function! CheckShFile()
    normal!i#! /usr/bin/env sh
    normal!o
endfunction

function! CheckPyFile()
    normal!i#! /usr/bin/env python3
    normal!o
endfunction

function! CheckFishFile()
    normal!i#! /usr/bin/env fish
    normal!o
endfunction

function! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction
command! TrimWhitespace call TrimWhitespace()

if has("autocmd")
    augroup autoJumpLastCursor
        autocmd!
        autocmd BufReadPost *
                    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                    \   exe "normal! g'\"" |
                    \ endif
    augroup END
endif

function! WriteCreatingDirs()
    let l:file=expand("%")
    if empty(getbufvar(bufname("%"), '&buftype')) && l:file !~# '\v^\w+\:\/'
        let dir=fnamemodify(l:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
    write
endfunction
command! WriteCreatingDirs call WriteCreatingDirs()

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 200})
augroup END
