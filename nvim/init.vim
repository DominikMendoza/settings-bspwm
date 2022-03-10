"---------------------------------vim config---------------------------- 
syntax on 
set number 
set mouse=a
set clipboard+=unnamedplus
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
"Get out of insert mode 
"Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>l
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line xnoremap K :move '<-2<CR>gv-gv xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"-------------------------------Sources-------------------------------
source ~/.config/nvim/plugins/plugins.vim
source ~/.config/nvim/plugins/plug-config.vim
source ~/.config/nvim/themes/onedark.vim
"--------------------------------Plugins Config--------------------------------------------
nmap <leader>g+ :FloatermNew --autoclose=0 dotnet run<CR>
nmap <leader>w :w <CR>
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
"recargar
nmap <leader>so :so%<CR>
"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>
"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]
nmap <Leader>e :NERDTree<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>
"cerrar buffer
nmap <leader>bd :bdelete<CR>
"--gruvbox config--
"colorscheme onedark
"let g:gruvbox_contrast_dark = "medium"

set cmdheight=1
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
colorscheme tokyonight
"Close tags automatically
"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'
"-----------------------------------------------------------------
