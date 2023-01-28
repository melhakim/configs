let g:DisableAutoPHPFolding = 0
let php_folding = 0
let g:php_refactor_command='~/bin/refactor.phar'
" Disable PHP Mess detector
let g:phpqa_messdetector_autorun=0
let g:phpqa_codesniffer_autorun=0

call plug#begin()
      Plug 'rayburgemeestre/phpfolding.vim'
      Plug 'arnaud-lb/vim-php-namespace'
      Plug 'vim-php/vim-php-refactoring'
      Plug 'stephpy/vim-php-cs-fixer'
      Plug 'joonty/vim-phpqa'
call plug#end()            " required

" PHP documenter script bound to Leader-d
autocmd FileType php nnoremap <Leader>d :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <Leader>d :call PhpDocRange()<CR>

autocmd FileType puppet setlocal sw=8

" Insert use statements for vim-php-namespace
autocmd FileType php inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

autocmd FileType javascript setlocal sw=2 ts=2

" Remove trailing Whitespaces for PHP files
autocmd BufWritePre *.php :%s/\s\+$//e

autocmd QuickFixCmdPost grep cwindow "Call Cwindow after grep has been invoked
au FileType puppet setlocal sw=8
au FileType javascript setlocal sw=2 ts=2
au QuickFixCmdPost grep cwindow "Call Cwindow after grep has been invoked
