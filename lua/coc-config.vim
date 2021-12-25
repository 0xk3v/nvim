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

" dark red
" hi tsxTagName guifg=#E06C75
" hi tsxComponentName guifg=#E06C75
" hi tsxCloseComponentName guifg=#E06C75

" " orange
" hi tsxCloseString guifg=#F99575
" hi tsxCloseTag guifg=#F99575
" hi tsxCloseTagName guifg=#F99575
" hi tsxAttributeBraces guifg=#F99575
" hi tsxEqual guifg=#F99575

" " yellow
" hi tsxAttrib guifg=#F8BD7F cterm=italic

" " light-grey
" hi tsxTypeBraces guifg=#999999
" " dark-grey
" hi tsxTypes guifg=#666666


" hi ReactState guifg=#C176A7
" hi ReactProps guifg=#D19A66
" hi ApolloGraphQL guifg=#CB886B
" hi Events ctermfg=204 guifg=#56B6C2
" hi ReduxKeywords ctermfg=204 guifg=#C678DD
" hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
" hi WebBrowser ctermfg=204 guifg=#56B6C2
" hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66
