call plug#begin('~/.vim/plugged')
Plug 'rakr/vim-one'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'
Plug 'mhartington/nvim-typescript'
call plug#end()



" Theme
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
colorscheme one
set background=dark
set number

" Autocompletion
	"let g:ale_completion_enabled = 1
	"let g:ale_completion_tsserver_autoimport = 1
	"let g:LanguageClient_serverCommands = { 'javascript': ['typescript-language-server', '--stdio'], 'typescript': ['typescript-language-server', '--stdio'] }
	
let g:deoplete#enable_at_startup=1

" Fuzy file finder
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :Commits<Cr>



" My mappings
imap <Up>    <Nop>
imap <Down>  <Nop>
imap <Left>  <Nop>
imap <Right> <Nop>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>


