" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}
colorscheme tokyodark
let g:syntastic_cs_checkers = ['code_checker']
let g:OmniSharp_selector_ui = 'clap'


" Python Config...

let g:python_highlight_all = 1

" JSX Settings

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
