""------------------------------------------------------------
" python set up
"------------------------------------------------------------
let g:python_host_prog=$PYENV_ROOT.'/versions/2.7.18/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/3.9.0b3/bin/python'


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
" mode settinng
"------------------------------------------------------------
inoremap jj <ESC>
set timeoutlen=500


"------------------------------------------------------------
" encode setting
"------------------------------------------------------------
set encoding=utf-8


"------------------------------------------------------------
" file setting
"------------------------------------------------------------
set nobackup "バックアップファイル非作成
set noswapfile "スワップファイル非作成
set nowritebackup
set autoread "変更を自動読み込み


"------------------------------------------------------------
" edita setting
"------------------------------------------------------------
set number "行番号表示
set clipboard=unnamed "クリップボード連携
set splitbelow "水平分割時に下に表示
set splitright "縦分割時に右に表示
"set noequalalways "分割時に自動調整を無効化
set expandtab "tabを複数のspaceに置き換え
set tabstop=2 "tabは半角4文字
set shiftwidth=2 "tabの幅
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
set list listchars=tab:»-,trail:-,nbsp:%,eol:↲ " タブ、空白、改行を表示 :set nolist で非表示に変更
set nrformats= "数値項目を10進数扱い
set hidden "未保存ファイルがあっても新ファイルを開けるようにする


"------------------------------------------------------------
" statusline setting
"------------------------------------------------------------
set laststatus=2 "ステータスライン表示
set wildmenu "コマンドモードの補完
set pumheight=15 "コマンドモードの補完候補数
set background=dark "コマンド右下表示
set showcmd "入力中のコマンドのステータス表示
"set statusline=%F%m\ %<[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ %=[CODE=0x%02B]\ [POS=%l/%L(%02v)]


"------------------------------------------------------------
" cursorl setting
"------------------------------------------------------------
set ruler "カーソルの位置表示
set cursorline "カーソル行ハイライト
set virtualedit=onemore "最終行+1
set showmatch "対応括弧表示
set matchtime=1 "対応括弧表示時間0.1秒


"------------------------------------------------------------
" search setting
"------------------------------------------------------------
set hlsearch "検索語ハイライト
set incsearch "インクリメンタルサーチ
set ignorecase "小文字検索時は大文字区別なし
set smartcase "大文字検索時は大文字区別あり


"------------------------------------------------------------
" command line setting
"------------------------------------------------------------
set wildmode=longest,full "リスト補完


"------------------------------------------------------------
" noremap setting
"------------------------------------------------------------

"" 列移動設定
noremap <C-l> $
noremap <C-h> ^

" 行移動設定
noremap <space>j 7j
noremap <space>k 7k

" Y で行内のカーソル以降をコピー
nnoremap Y y$

" j,k移動
noremap j gj
noremap k gk

" usキーボード対応
noremap ; :
noremap : ;


"------------------------------------------------------------
" normal mode setting
"------------------------------------------------------------

" 改行設定
nnoremap <C-j>h i<CR><ESC>
nnoremap <C-j>k O<ESC>
nnoremap <C-j>j o<ESC>

" インクリメント/デクリメント
nnoremap + <C-a>
nnoremap - <C-x>

" ヤンク制御
nnoremap x "_x
nnoremap D "_D
nnoremap c "_c

" タブ設定
nnoremap <space>tn :tabnew<CR>
nnoremap <space>tl :tabnext<CR>
nnoremap <space>th :tabprevious<CR>
nnoremap <space>tmh :tabm -1<CR>
nnoremap <space>tml :tabm +1<CR>

" バッファ設定
nnoremap <space>bb :ls<CR>
nnoremap <space>bh :bprev<CR>
nnoremap <space>bl :bnext<CR>

" ターミナル設定
nnoremap <space>tt :tab term<CR>
nnoremap <ESC><ESC><ESC> <C-\><C-N>

" Expressionレジスタ設定
"nnoremap 

"------------------------------------------------------------
" insert mode setting
"------------------------------------------------------------

" 削除設定
inoremap <C-l> <Del>

" put設定
inoremap <C-r><space> <C-r>0

" 矢印キー設定
" 上
"inoremap <Up>
" 下
"inoremap <Down>
" 左
"inoremap <Left>
" 右
"inoremap <Right>
