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
