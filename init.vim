" vim plugins {{{
" specify directory for vim plugins
call plug#begin('~/.vim/plugged')

" plugins go here

Plug 'w0rp/ale'
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
<<<<<<< HEAD
Plug 'Valloric/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'benmills/vimux'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'christoomey/vim-tmux-navigator'
=======
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'Sirver/ultisnips'

>>>>>>> c8fa254ea15ffef15a839ff65871ea4201f9db7d
call plug#end()
" }}}
" Basic Settings {{{
set shiftwidth=2 tabstop=2 expandtab

colorscheme gruvbox
set background=dark
"change <Leader> from \ to ,
let g:mapleader=','
let g:maplocalleader = "\\"

" turn off highlighting
highlight Special NONE
set number		"show line numbers

" set up colorscheme
let g:gruvbox_italic=1
set termguicolors
colorscheme gruvbox 
set background=dark

"set winheight=10
set winminheight=0

" show long lines in red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" turn off word wrap
set nowrap

" open a file with all folds closed
let g:foldlevelstart=0

" set search highlighting options
set hlsearch incsearch
" }}}
" Makefile Settings {{{
augroup filetype_make
  autocmd!
  autocmd FileType make setlocal noexpandtab
augroup end
"  }}}
" Mappings {{{
"
" ALE jump to error mappings
nnoremap <silent> <leader>aj :ALENext<cr>
nnoremap <silent> <leader>ak :ALEPrevious<cr>

" better window switching
" add a _ after last <c-w> to make windows minimize on switch
nnoremap <c-j> <c-w>j<c-w>_
nnoremap <c-k> <c-w>k<c-w>_
nnoremap <c-h> <c-w>h<c-w><esc>
nnoremap <c-l> <c-w>l<c-w><esc>

" uppercase word in insert mode
inoremap <c-u> <esc>viwU<esc>ea

" shortcut for editing .vimrc
:nnoremap <leader>ev :split $MYVIMRC<cr>

" shortcut for sourcing .vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr>

" say hello
:nnoremap <leader>h :echo("hello")

" shortcut for NERDTree
:nnoremap <leader>t :NERDTreeToggle<cr>

" shortcut for erb brackets
:inoremap <leader>e <%=  %><esc>hhi

" shortcut for end of line in insert mode
:inoremap <c-e> <esc>$a

" shortcut to move forward one char in insert mode
:inoremap <c-f> <esc>la

" shortcut to move backward one char in insert mode
:inoremap <c-b> <esc>i

"shortcut for executing macro on letter d
:nnoremap <leader>f @d

" toggle folds with spacebar
nnoremap <space> za

"open previous buffer to the right of current
nnoremap <leader>rr :execute "rightbelow vsplit ". bufname("#") <cr>

" automatically insert the \v whenever you begin a search
nnoremap / /\v

" map <c-l> to redraw the screen
nnoremap <s-l> :redraw! <cr>

" map Y to yank to system clipboard
vnoremap <s-y> "+y

" map P to paste from system clipboard
nnoremap <s-p> "+p

" map <leader>b to run 'npm run build' in shell

" map v b to highlight a block enclosed by {}
vnoremap b 0<esc>vt{%

" map <c-n> to go to next line
inoremap <c-n> <esc>ja

" map cip to find parens in line and change the inside
nnoremap cip f(a<esc>ci(

" map cib to find brackets in line and change the inside
nnoremap cib f{a<esc>ci{

"}}}
" Closetag Plugin Settings {{{

let g:closetag_filenames = '*.html.erb,*.html,*.xhtml,*.phtml'

" }}}
" Vimscript file settings ------------------------------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup end
"}}}
" UltiSnips settings ------------------------------- {{{
let g:UltiSnipsExpandTrigger = '<c-space>'
let g:UltiSnipsSnippetDirectories = ['/home/jordan/.vim/UltiSnips', 'UltiSnips']
"}}}
" vimux settings ------------------------------- {{{
nnoremap <leader>vl :VimuxRunLastCommand<cr>
nnoremap <leader>vr :VimuxPromptCommand<cr>
"}}}

tnoremap <Esc> <C-\><C-n>
