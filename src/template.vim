if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'nagomi'


{{ rules }}

{{ links }}

if has('nvim')
  {{ neovim_term_defs }}
else
  {{ vim_term_defs }}
endif
