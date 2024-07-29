execute pathogen#infect()
syntax on
filetype plugin indent on
set number

" nerd-tree
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" dart-vim
let g:dart_html_in_string = v:true
let g:dart_format_on_save = 1
"let g:dart_style_guide = 2
let g:dart_trailing_comma_indent = v:true

" ale
"let g:ale_completion_enabled = 1
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_disable_lsp = 1
