set number
syntax on
set tabstop=2
set expandtab
set autoindent
set backspace=indent,eol,start
set clipboard=unnamed,autoselect
set hlsearch

colorscheme molokai
set t_Co=256

set ruler

augroup complete
  autocmd!
    autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
    autocmd Filetype erb inoremap <buffer> </ </<C-x><C-o>
augroup END


set runtimepath+=~/.vim/bundle/neobundle.vim
"NeoBundleの設定
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"Plugins
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'

NeoBundleCheck

call neobundle#end()
"----------------------------
"NERDTree
"----------------------------
"vim起動時に開く
"autocmd VimEnter * execute 'NERDTree'

"一緒に閉じる
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeShowHidden=1



""----------------------------
""neocomplcache
""----------------------------
""Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
""Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
""Set minimum syntax keyword length.
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
"let g:neocomplcache_enable_underbar_completion = 1
"
"inoremap <expr><C-h> neocomplcache#smart_close_popup().”\<C-h>”
"inoremap <expr><C-y> neocomplcache#close_popup()
"inoremap <expr><C-e> neocomplcache#cancel_popup()
"

"----------------------------
"key map
"----------------------------
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"emmete
let g:user_emmet_expandabbr_key = '<c-d>'
let g:user_emmet_settings = {'indentation' : '  ','lang' : 'ja' }
