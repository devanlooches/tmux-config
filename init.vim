" On enter commands
set termguicolors
syntax enable
autocmd BufWinEnter * silent! loadview
set foldmethod=manual
" Avoid showing extra messages when using completion
set shortmess+=c
filetype plugin indent on
let mapleader = " "
set relativenumber
set number
set spell
set spelllang=en_us
set omnifunc=ale#completion#OmniFunc
set clipboard+=unnamedplus
noremap <leader>d "_d

" Plugins
call plug#begin('~/.vim/plugged')

" Autoclose
Plug 'jiangmiao/auto-pairs'

" Snippets
Plug 'Shougo/neosnippet.vim' | Plug 'Shougo/neosnippet-snippets'

" Vim Cool
Plug 'romainl/vim-cool'

" Vim Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Commenting
Plug 'tpope/vim-commentary'

" Table Mode
Plug 'dhruvasagar/vim-table-mode'

" Colorscheme
Plug 'haishanh/night-owl.vim'

" Vim Tips
Plug 'michaelb/vim-tips'

" Bracket Pair Colorizer
Plug 'luochen1990/rainbow'

" Colorizer For Neovim
Plug 'norcalli/nvim-colorizer.lua'

" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

" Vim plugin required for Firenvim (Neovim in the browser!!!!)
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" Auto completion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'

" Emmet for Neovim
Plug 'mattn/emmet-vim'

" Syntax highlighting for a bunch of files
Plug 'sheerun/vim-polyglot'

" Git Wrapper for Vim
Plug 'tpope/vim-fugitive'

" Neovim Rich Presence For Discord
Plug 'andweeb/presence.nvim'

" Markdown preview
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

Plug '/Users/devan/workspace/rust_stuff/neovim-apple-calendar'

call plug#end()
" Init Colorizer Plugin
lua require'colorizer'.setup()

" Set Colorscheme
colorscheme night-owl
autocmd BufWinEnter * AirlineTheme night_owl

" Fast edit vimrc
nnoremap <leader>v <cmd>e ~/.config/nvim/init.vim<cr>
nnoremap <leader>r <cmd>source ~/.config/nvim/init.vim<cr>

" Source plugin configs
" Rainbow
source $HOME/.config/nvim/plug-config/rainbowrc.vim

" Emmet
source $HOME/.config/nvim/plug-config/emmetrc.vim

" lsp_config
source $HOME/.config/nvim/plug-config/lspconfigrc.vim

" Rich Presence Config
source $HOME/.config/nvim/plug-config/presencerc.vim

" Firenvim Config
source $HOME/.config/nvim/plug-config/firenvimrc.vim

" Table Mode Config For markdown tables
source $HOME/.config/nvim/plug-config/tablemoderc.vim

" Telescope Config
source $HOME/.config/nvim/plug-config/telescoperc.vim

" Git Fugitive
source $HOME/.config/nvim/plug-config/gitfugitiverc.vim

" Snippets Config
source $HOME/.config/nvim/plug-config/snippetsrc.vim

" Auto Pairs Config
source $HOME/.config/nvim/plug-config/autopairrc.vim
