" Start VimRC
set nocompatible
filetype plugin on

" Mapping 
nmap <leader>l :set list!<CR>

" Setting
set listchars=tab:▸\ ,eol:¬,lead:·,trail:·,nbsp:&
set ts=4 sts=4 sw=4 expandtab

" Coloration
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Autocmd
if has("autocmd")
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd BufNewFile,BufRead *.rss setfiletype xml
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

