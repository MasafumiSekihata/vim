" ### 設定 ### 
" 文字コード
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 変更されても自動読み込み
set autoread
" 入力中のコマンドをステータス表示
set showcmd
" コマンド右下表示
set background=dark

" ### 見た目 ###
" 行番号表示
set number
" カレント行強調
set cursorline
" カレント列強調
set cursorcolumn
" 行末+1文字までカーソル移動可
set virtualedit=onemore
"スマートインデント
set smartindent
" 対応カッコ表示
set showmatch
" ステータスライン表示
set laststatus=2
" コマンドライン補完
set wildmode=list:longest
"C-W,sで横分割
nmap <C-W>s :sp<CR>
"C-W,vで縦分割
nmap <C-W>v :vsp<CR>

" ### 検索 ###"
" 検索語ハイライト
set hlsearch
" インクリメンタルサーチ
set incsearch
" 小文字検索時は大文字小文字区別なし
set ignorecase
" 大文字検索時は区別
set smartcase
" esc 連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set wildmenu

" ### フォーマット###

syntax enable
colorscheme iceberg

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 

