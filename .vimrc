set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'toyamarinyon/vim-swift'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'godlygeek/tabular'
Plugin 'sjl/badwolf'
Plugin 'plasticboy/vim-markdown'
Plugin 'kyuhi/vim-emoji-complete'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin on

set number
set visualbell
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
retab

set fdm=syntax

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" buffer tabe
"autocmd VimEnter * tab all
"autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'
"
"nnoremap <F5> :tabprev<CR>
"nnoremap <F6> :tabnext<CR>
"imap <F5> <c-o>:tabprev<CR>
"imap <F6> <c-o>:tabnext<CR>

map <C-K> :pyf ~/.clang-format/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/.clang-format/clang-format.py<cr>

colorscheme badwolf
hi Normal ctermbg=none
hi NonText ctermbg=none 

" This makes it autowrap at 80 characters wide, and allows you to type e.g. gqq
" in Normal mode to reindent the current paragraph.
set textwidth=80

" font size gvim
set guifont=Monospace\ 16

" This shows "bad" whitespaces, i.e. whitespace at the end of a line or mixed
" spaces & tabs.
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ containedin=ALL

" This switches between pastemode and normal mode when you press F10.
" Pastemode makes vim do as little processing as possible on the stuff you input,
" like indenting, wrapping, etc.
set pastetoggle=<F10>

" These make it so that if you're searching in all lowercase, then it is done
" case insensitive.
set ignorecase smartcase

" This makes it so that all the hits for your current search is hilighted.
" Note that if you've searched but no longer want the hits to be hilighted,
" use :noh in Normal mode (short for nohlsearch) to turn them off until
" you search again, or use the bind below and press space.
set hlsearch

" This makes searching incremental, so as soon as you start typing, it starts
" searching for the currently entered text. Remember to press Enter if you're
" happy with the hit so far to move the cursor there (Esc moves it back to your
" original position).
set incsearch

" Changes directory to the directory that contains the file you open,
" every time you open a file. Some find this annoying.
autocmd BufRead * cd %:p:h


set exrc
set secure
