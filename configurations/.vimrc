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

"Theme
if exists('+termguicolors')
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

let g:tokyonight_style = 'storm' "available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_disable_italic_comment = 0
let g:lightline = {'colorscheme' : 'tokyonight'}
let g:airline_theme = "tokyonight"
colorscheme tokyonight

" Autocmd
if has("autocmd")
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd BufNewFile,BufRead *.rss setfiletype xml
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

