" Prerequisites:
" - neovim >= 0.5
" - rust-analyzer: https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary

" Steps:
" - :PlugInstall
" - Restart

set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

call plug#begin('~/.vim/plugged')
" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Extentions to built-in LSP, for example, providing type inlay hints
Plug 'tjdevries/lsp_extensions.nvim'

" Autocompletion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'

" Some color scheme other then default
Plug 'arcticicestudio/nord-vim'

" Emmet for neovim
Plug 'mattn/emmet-vim'

" Syntax highlighting for a bunch of files
Plug 'sheerun/vim-polyglot'

" ALE
Plug 'dense-analysis/ale'

"Sneak for vim
Plug 'justinmk/vim-sneak'

" Git Wrapper for Vim
Plug 'tpope/vim-fugitive'

" Ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

call plug#end()

syntax enable
filetype plugin indent on

colorscheme nord

let mapleader = " "

" Avoid showing extra messages when using completion
set shortmess+=c

" Emmet
source $HOME/.config/nvim/plug-config/emmetrc.vim

" ALE
source $HOME/.config/nvim/plug-config/alerc.vim

" lsp_config
source $HOME/.config/nvim/plug-config/lspconfigrc.vim

" Code navigation shortcuts
" as found in :help lsp
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" rust-analyzer does not yet support goto declaration
" re-mapped `gd` to definition
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

" Trigger completion with <tab>
" found in :help completion
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use <Tab> as trigger keys
imap <Tab> <Plug>(completion_smart_tab)
imap <S-Tab> <Plug>(completion_smart_s_tab)

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hover
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
