""------------------------------------------------------------
" dein.vim set up
"------------------------------------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Pluginディレクトリのパス
let s:dein_dir = expand('~/.vim/dein')
" dein.vimのパス
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'
" tomlのディレクトリへのパス
let s:toml_dir = expand('~/.config/nvim')

" Required:
execute 'set runtimepath^=' . s:dein_repo_dir

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " 起動時に読み込むプラグイン群のtoml
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


"------------------------------------------------------------
" encode setting
"------------------------------------------------------------
set encoding=utf-8

"------------------------------------------------------------
" file setting
"------------------------------------------------------------
set nobackup "バックアップファイル非作成
set noswapfile "スワップファイル非作成
set autoread "変更を自動読み込み
""ctrl-n にNERDTreeToggle コマンドをマップ
"nnoremap <silent><C-n> :NERDTreeTabsToggle<CR>

"------------------------------------------------------------
" edita setting
"------------------------------------------------------------
set number "行番号表示
set clipboard=unnamed "クリップボード連携 
set splitbelow "水平分割時に下に表示
set splitright "縦分割時に右に表示
"set noequalalways "分割時に自動調整を無効化
set wildmenu "コマンドモードの補完
set laststatus=2 "ステータスライン表示
set background=dark "コマンド右下表示
set showcmd "入力中のコマンドのステータス表示
set expandtab "tabを複数のspaceに置き換え
set tabstop=4 "tabは半角2文字
set shiftwidth=4 "tabの幅
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
set list listchars=tab:»-,trail:-,nbsp:%,eol:↲
""Ctrl+w,s で横分割
"nmap <C-W>s :sp<CR>
""Ctrl+w,v で縦分割
"nmap <C-W>v :vsp<CR>

"------------------------------------------------------------
" tab setting
"------------------------------------------------------------
nnoremap <C-T>l :tabnext<CR>
nnoremap <C-T>h :tabprevious<CR>

"------------------------------------------------------------
" cursorl setting
"------------------------------------------------------------
set ruler "カーソルの位置表示
set cursorline "カーソル行ハイライト
"set cursorcolumn "カーソル列ハイライト
set virtualedit=onemore "最終行+1
set showmatch "対応括弧表示

"------------------------------------------------------------
" search setting
"------------------------------------------------------------
set hlsearch "検索語ハイライト
set incsearch "インクリメンタルサーチ
set ignorecase "小文字検索時は大文字区別なし
set smartcase "大文字検索時は大文字区別あり
"ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"------------------------------------------------------------
" command line setting
"------------------------------------------------------------
set wildmode=longest,full "リスト補完

"------------------------------------------------------------
" terminal設定
"------------------------------------------------------------
"nmap <C-t><C-t> :split|term<CR>
:command Term :split|term
:command Terminal :split|term

"------------------------------------------------------------
" FZF設定
"------------------------------------------------------------
"fun! FzfOmniFiles()
"  let is_git = system('git status')
"  if v:shell_error
"    :Files
"  else
"    :GitFiles
"  endif
"endfun

nnoremap <C-g> :Rg<Space>
nnoremap <leader><leader> :Commands<CR>
"nnoremap <C-p> :call FzfOmniFiles()<CR>
nnoremap <C-p> :Files<CR>

"------------------------------------------------------------
" markdown setting
"------------------------------------------------------------
"let g:table_mode_corner = '|' "テーブル整形
"let g:previm_open_cmd = 'open -a safari' "プレビュー
"let g:previm_disable_default_css = 1 "デフォルトCSSオフ
"let g:previm_custom_css_path = '/Users/sekihatamasafumi/Library/Application Support/abnerworks.Typora/themes/misty-light-macos.css' "カスタムCSSパス
