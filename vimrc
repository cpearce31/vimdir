execute pathogen#infect()

" global formatting defaults
set number
set numberwidth=3
set tabstop=2
set shiftwidth=2
set expandtab

" file specific formatting
autocmd Filetype rust setlocal ts=4 sw=4

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Syntasic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Add column number
set statusline+=col:\ %c\

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_rust_checkers = ['rustc']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_sh_checkers = ['shellcheck']

" Start NERDTree on Vim startup except for commit messages
" :autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif

" Visual settings
set background=light
colorscheme PaperColor

" Use system clipboard
set clipboard=unnamedplus
