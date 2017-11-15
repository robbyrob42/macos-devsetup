:set nocompatible
":uu filetype off
:syntax on
:filetype plugin on
:set tabstop=4
:set softtabstop=4
:set expandtab
:set number
:set showcmd
:filetype indent on
:set wildmenu
:set lazyredraw
:set showmatch
:set incsearch
:set hlsearch
:set foldenable
:set foldlevelstart=10
:set foldnestmax=10
:set foldmethod=indent
:set modelines=1
": set relativenumber "relative number line hoppings 0 = current line
if has("unix")
        let &runtimepath=&runtimepath . ',~/.vim/bundle/vim-force.com' " set the runtime path to load apex commands
elseif has("win32")
        let &runtimepath=&runtimepath . ',c:\Documents and Settings\username\vimfiles\vim-force.com' "update username here
endif
runtime ftdetect/vim-force.com.vim

": set the runtime path to include Vundle and initialize
:set rtp+=~/.vim/bundle/Vundle.vim
:call vundle#begin()

" let Vundle manage Vundle, required
:Plugin 'VundleVim/Vundle.vim'
:Plugin 'altercation/vim-colors-solarized'
:Plugin 'scrooloose/nerdtree'
:Plugin 'Xuyuanp/nerdtree-git-plugin'
:Plugin 'tpope/vim-fugitive'
:Plugin 'neowit/vim-force.com'
:Plugin 'vim-airline/vim-airline'
:Plugin 'vim-airline/vim-airline-themes'
:Plugin 'jmcantrell/vim-virtualenv'
:Plugin 'majutsushi/tagbar'

"keep Plugin commands between begin and end

:call vundle#end() "required
:filetype plugin indent on " required

"autostart NerdTree set hidden files mode
"this didnt work: autocmd StdinReadPre * let s:std_in=1
"this didnt work: autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
:autocmd vimenter * NERDTree
:autocmd vimenter <S-i><CR>

"Brief help
":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"see :h vundle for more details or wiki for FAQ
"Put your non-Plugin stuff after this line

"Key mappings

:nnoremap <C-n> :NERDTreeToggle<CR> " control-n to start nerdtree
:nnoremap <c-j> <c-w>j
:nnoremap <c-k> <c-w>k
:nnoremap <c-l> <c-w>l
:nnoremap <c-h> <c-w>h

"Airline config
:let g:airline#extensions#tabline#enabled = 1
:let g:airline_powerline_fonts = 1
:let g:airline_theme = 'solarized'

"Vim-Force setup items
:let g:apex_backup_folder = '~/"google drive"/robbyrob/force.com/vimforcebackup'
:let g:apex_temp_folder = '~/.vim/bundle/vim-force.com/tmp' "create this folder locally TODO
:let g:apex_properties_folder = '~/"google drive"/robbyrob/force.com' TODO
:let g:apex_tooling_force_dot_com_path = '~/macsetup'
" optional stuff
    " g:apex_diff_cmd path to file compare tool
    " g:apex_ctags_cmd path to exuberant ctags
    " g:apex_syntax_case_sensitive
    " g:apex_API_version which force.com version to use with new files ex: 29.0
    " g:apex_pollWaitMillis number of milliseconds to wait between each poll of 
    " g:apex_messages_split_type
    " g:apex_messages_split_size
    " g:apex_conflict_check on/off conflict check with SF prior to deploy
    " g:apex_java_cmd custom jre path
    " g:apex_tooling_force_dot_com_java_params pass extra JVM params
    " g:apex_tooling_force_dot_com_extra_params pass extra params to tooling jar,



