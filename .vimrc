execute pathogen#infect()
syntax on
filetype plugin indent on

" nerd-tree config
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" dart-vim config
let g:dart_html_in_string = v:true
let g:dart_format_on_save = 1
"let g:dart_style_guide = 2
let g:dart_trailing_comma_indent = v:true
