""------------------------------------------------------------
" python set up
"------------------------------------------------------------
let g:python_host_prog=$PYENV_ROOT.'/versions/2.7.18/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/3.9.0b3/bin/python'
"
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
" coc.nvim settinng
"------------------------------------------------------------


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
set expandtab "tabを複数のspaceに置き換え
set tabstop=2 "tabは半角4文字
set shiftwidth=2 "tabの幅
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
set list listchars=tab:»-,trail:-,nbsp:%,eol:↲ " タブ、空白、改行を表示 :set nolist で非表示に変更
" ctlr+j,h でカーソル部分から改行
nnoremap <C-j>h i<CR><ESC>
" ctlr+j,k でカーソル上行に改行
nnoremap <C-j>k O<ESC>
" ctlr+j,j でカーソル下行に改行
nnoremap <C-j>j o<ESC>
""Ctrl+w,s で横分割
"nmap <C-W>s :sp<CR>
""Ctrl+w,v で縦分割
"nmap <C-W>v :vsp<CR>
" ctrl+l で文末へ移動
nmap <C-l> $
" ctrl+h で文頭へ移動
nmap <C-h> ^
" Ctrl+@ でエスケープ
nmap <C-@> <ESC>
" space + j で10*j
noremap <space>j 7j
" space + k で10*k
noremap <space>k 7k
" Y で行内のカーソル以降をコピー
nnoremap Y y$
" j,k移動
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk
" インクリメント/デクリメント
nnoremap + <C-a>
nnoremap - <C-x>
" ヤンク制御
nnoremap x "_x
nnoremap D "_D
nnoremap c "_c
" usキーボード対応
nnoremap ; :
nnoremap : ;
"
"------------------------------------------------------------
" number setting
"------------------------------------------------------------
set nrformats=

"------------------------------------------------------------
" tab setting
"------------------------------------------------------------
nnoremap <space>tn :tabnew<CR>
nnoremap <space>tl :tabnext<CR>
nnoremap <space>th :tabprevious<CR>
nnoremap <space>tmh :tabm -1<CR>
nnoremap <space>tml :tabm +1<CR>

"------------------------------------------------------------
" buffer setting
"------------------------------------------------------------
set hidden
nnoremap <space>bb :ls<CR>
nnoremap <space>bh :bprev<CR>
nnoremap <space>bl :bnext<CR>

"------------------------------------------------------------
" terminal setting
"------------------------------------------------------------
nnoremap <space>tt :tab term<CR>
nnoremap <ESC><ESC><ESC> <C-\><C-N>

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
"set cursorcolumn "カーソル列ハイライト
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
"ESC連打でハイライト解除
nnoremap <C-n> :nohlsearch<CR><Esc>

"------------------------------------------------------------
" command line setting
"------------------------------------------------------------
set wildmode=longest,full "リスト補完

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
