set nocompatible
set tabstop=4
set hlsearch
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

command ND NERDTree
command PI PluginInstall 

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" All of your Plugins must be added before the following line


Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mhinz/vim-startify'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'uguu-org/vim-matrix-screensaver'
Plugin 'ianva/vim-youdao-translater'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

" nerdcommenter
let g:NERDSpaceDelims=1

" ack
let g:ackprg = 'ag --nogroup --nocolor --column'
map <c-u> :Ack<space>

" YCM settings
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['']
let g:ycm_key_invoke_completion = '<C-Space>'

" UltiSnips setting
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" set mapleader
let mapleader = ","

" youdao
vnoremap <silent> <C-L> :<C-u>Ydv<CR>
nnoremap <silent> <C-L> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

" vim-go custom mappings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

" vim-go settings
let g:go_fmt_command = "goimports"

" 启动时自动focus
let g:tagbar_autofocus = 1
command T TagbarToggle 

" Matrix
command M Matrix

" startify
set viminfo='100,n$HOME/.vim/files/info/viminfo
