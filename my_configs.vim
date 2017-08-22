
set mouse-=a
" customize ultimate vim
set nocompatible laststatus=2 number ruler expandtab shiftwidth=4 softtabstop=4 relativenumber

" Syntastic style
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '⚡'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Syntastic checkers
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_typescript_checkers = ['tslint']

" Theme 
syntax enable
set background=light
let g:solarized_termcolors=256  
colorscheme solarized

" NerdTree
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

" Multiple Cursor
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'

" Make vim indent 2 spaces for ruby and scala files only
filetype plugin indent on
set sw=4
set ts=4
:autocmd Filetype ruby set softtabstop=2
:autocmd Filetype ruby set sw=2
:autocmd Filetype ruby set ts=2

:autocmd Filetype javascript set softtabstop=2
:autocmd Filetype javascript set sw=2
:autocmd Filetype javascript set ts=2

:autocmd Filetype scala set softtabstop=2
:autocmd Filetype scala set sw=2
:autocmd Filetype scala set ts=2

" GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_realtime = 1
set updatetime=250

" Add es6 to javascript syntax
au BufRead,BufNewFile *.es6 set filetype=javascript    " to overrule an existing filetype
au BufRead,BufNewFile *.es6 setfiletype javascript        " to set it only if no filetype has been detected for this extension

" Auto-formant
noremap <F5> :Autoformat<CR>

" Add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" Plus sign to use clipboard
set clipboard+=unnamedplus

" Enable deoplete
let g:deoplete#enable_at_startup = 1
