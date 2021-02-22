set number
set bg=dark
set hlsearch
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab 
set bs=2
set autoindent
set noerrorbells visualbell t_vb=
set tabpagemax=20
set laststatus=2
set statusline+=%F " path
set statusline+=%m " modified
filetype indent on
syntax on
set mouse=a
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0

function! ToggleMouse()
    if &mouse=='a'
        set paste
        set mouse=
        set nonumber
        echo 'PASTE'
    else
        set nopaste
        set mouse=a
        set number
        echo 'NOPASTE'
    endif
endfunction

nnoremap <F4> :call ToggleMouse()<CR>
nnoremap <F5> :!make<CR>
"nnoremap <F6> :NERDTreeToggle<CR><C-w><C-w>
"nnoremap <F6> :!make asm<CR>
"nnoremap <F7> :!./do_rsync.sh<CR>
"nnoremap <F9> :!./do_rsync.sh mingw<CR>

"nnoremap n nzz
"nnoremap N Nzz
"nnoremap * *zz
"nnoremap # #zz
"nnoremap g* g*zz
"nnoremap g# g#zz

"call plug#begin()
"    Plug 'preservim/nerdtree'
"call plug#end()

"autocmd VimEnter * NERDTree | wincmd p
"autocmd BufWinEnter * silent NERDTreeMirror
