au BufEnter github.com_*.txt set filetype=markdown
nnoremap <Esc><Esc> :call firenvim#focus_page()<CR>
  \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'firenvim',
            \ 'priority': 0,
            \ 'selector': 'textarea:not([readonly]):not([class="handsontableInput"]), div[role="textbox"]',
            \ 'takeover': 'always',
        \ },
        \ '.*notion\.so.*': { 'priority': 9, 'takeover': 'never', },
        \ '.*docs\.google\.com.*': { 'priority': 9, 'takeover': 'never', },
    \ }
