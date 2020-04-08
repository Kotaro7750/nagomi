if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'nagomi'


hi! ColorColumn cterm=NONE ctermbg=235 guibg=#281a14
hi! CursorColumn cterm=NONE ctermbg=235 guibg=#281a14
hi! CursorLine cterm=NONE ctermbg=235 guibg=#281a14
hi! Comment ctermfg=242 guifg=#4d4398
hi! Constant ctermfg=140 guifg=#65318e
hi! Cursor ctermbg=252 ctermfg=234 guibg=#afafb0 guifg=#16160e
hi! CursorLineNr cterm=NONE ctermbg=237 ctermfg=253 guibg=#595857 guifg=#c0c6c9
hi! Delimiter ctermfg=252 guifg=#afafb0
hi! DiffAdd ctermbg=29 ctermfg=158 guibg=#22452b guifg=#8db09c
hi! DiffChange ctermbg=23 ctermfg=159 guibg=#384950 guifg=#a3b5c1
hi! DiffDelete ctermbg=95 ctermfg=224 guibg=#501e1c guifg=#bb898e
hi! DiffText cterm=NONE ctermbg=30 ctermfg=195 gui=NONE guibg=#5b7d92 guifg=#afafb0
hi! Directory ctermfg=109 guifg=#89c3eb
hi! Error ctermbg=234 ctermfg=203 guibg=#16160e guifg=#d9333f
hi! ErrorMsg ctermbg=234 ctermfg=203 guibg=#16160e guifg=#d9333f
hi! WarningMsg ctermbg=234 ctermfg=203 guibg=#16160e guifg=#d9333f
hi! EndOfBuffer ctermbg=234 ctermfg=236 guibg=#16160e guifg=#35351c
hi! NonText ctermbg=234 ctermfg=236 guibg=#16160e guifg=#35351c
hi! SpecialKey ctermbg=234 ctermfg=236 guibg=#16160e guifg=#35351c
hi! Folded ctermbg=235 ctermfg=245 guibg=#281a14 guifg=#996955
hi! FoldColumn ctermbg=235 ctermfg=239 guibg=#281a14 guifg=#595857
hi! Function ctermfg=110 guifg=#5a79ba
hi! Identifier cterm=NONE ctermfg=109 guifg=#89c3eb
hi! Include ctermfg=110 guifg=#5a79ba
hi! LineNr ctermbg=235 ctermfg=239 guibg=#281a14 guifg=#595857
hi! MatchParen ctermbg=237 ctermfg=255 guibg=#545435 guifg=#ffffff
hi! MoreMsg ctermfg=150 guifg=#3eb370
hi! Normal ctermbg=234 ctermfg=252 guibg=#16160e guifg=#afafb0
hi! Operator ctermfg=110 guifg=#5a79ba
hi! Pmenu ctermbg=236 ctermfg=251 guibg=#475950 guifg=#afafb0
hi! PmenuSbar ctermbg=236 guibg=#475950
hi! PmenuSel ctermbg=240 ctermfg=255 guibg=#38b48b guifg=#16160e
hi! PmenuThumb ctermbg=251 guibg=#afafb0
hi! PreProc ctermfg=150 guifg=#3eb370
hi! Question ctermfg=150 guifg=#3eb370
hi! QuickFixLine ctermbg=236 ctermfg=252 guibg=#37371f guifg=#afafb0
hi! Search ctermbg=216 ctermfg=234 guibg=#e4aa80 guifg=#392313
hi! SignColumn ctermbg=235 ctermfg=239 guibg=#281a14 guifg=#595857
hi! Special ctermfg=150 guifg=#3eb370
hi! SpellBad ctermbg=95 ctermfg=252 gui=undercurl guisp=#d9333f
hi! SpellCap ctermbg=24 ctermfg=252 gui=undercurl guisp=#5a79ba
hi! SpellLocal ctermbg=23 ctermfg=252 gui=undercurl guisp=#89c3eb
hi! SpellRare ctermbg=97 ctermfg=252 gui=undercurl guisp=#65318e
hi! Statement ctermfg=110 gui=NONE guifg=#5a79ba
hi! StatusLine cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#383c3c guifg=#2e2930 term=reverse
hi! StatusLineTerm cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#383c3c guifg=#2e2930 term=reverse
hi! StatusLineNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#383c3c guifg=#2e2930
hi! StatusLineTermNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#383c3c guifg=#2e2930
hi! StorageClass ctermfg=110 guifg=#5a79ba
hi! String ctermfg=109 guifg=#89c3eb
hi! Structure ctermfg=110 guifg=#5a79ba
hi! TabLine cterm=NONE ctermbg=233 ctermfg=238 gui=NONE guibg=#2e2930 guifg=#383c3c
hi! TabLineFill cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#383c3c guifg=#2e2930
hi! TabLineSel cterm=NONE ctermbg=234 ctermfg=252 gui=NONE guibg=#16160e guifg=#888887
hi! TermCursorNC ctermbg=242 ctermfg=234 guibg=#4d4398 guifg=#16160e
hi! Title ctermfg=216 gui=NONE guifg=#ee7800
hi! Todo ctermbg=234 ctermfg=150 guibg=#22452b guifg=#3eb370
hi! Type ctermfg=110 gui=NONE guifg=#5a79ba
hi! Underlined cterm=underline ctermfg=110 gui=underline guifg=#5a79ba term=underline
hi! VertSplit cterm=NONE ctermbg=233 ctermfg=233 gui=NONE guibg=#2e2930 guifg=#2e2930
hi! Visual ctermbg=236 guibg=#37371f
hi! WildMenu ctermbg=255 ctermfg=234 guibg=#7d6f82 guifg=#383c3c
hi! diffAdded ctermfg=150 guifg=#3eb370
hi! diffRemoved ctermfg=203 guifg=#d9333f
hi! ALEErrorSign ctermbg=235 ctermfg=203 guibg=#281a14 guifg=#d9333f
hi! ALEWarningSign ctermbg=235 ctermfg=216 guibg=#281a14 guifg=#ee7800
hi! ALEVirtualTextError ctermfg=203 guifg=#d9333f
hi! ALEVirtualTextWarning ctermfg=216 guifg=#ee7800
hi! GitGutterAdd ctermbg=235 ctermfg=150 guibg=#281a14 guifg=#3eb370
hi! GitGutterChange ctermbg=235 ctermfg=109 guibg=#281a14 guifg=#89c3eb
hi! GitGutterChangeDelete ctermbg=235 ctermfg=109 guibg=#281a14 guifg=#89c3eb
hi! GitGutterDelete ctermbg=235 ctermfg=203 guibg=#281a14 guifg=#d9333f
hi! nagomiALAccentRed ctermfg=203 guifg=#d9333f

hi! link TermCursor Cursor
hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssClassNameDot Normal
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link jsonQuote Normal
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link sassClass Special
hi! link shFunction Normal
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar Normal
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar Normal
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link deniteMatched Normal
hi! link deniteMatchedChar Title
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment

if has('nvim')
  let g:terminal_color_0 = '#281a14'
  let g:terminal_color_1 = '#d9333f'
  let g:terminal_color_2 = '#3eb370'
  let g:terminal_color_3 = '#ee7800'
  let g:terminal_color_4 = '#5a79ba'
  let g:terminal_color_5 = '#65318e'
  let g:terminal_color_6 = '#89c3eb'
  let g:terminal_color_7 = '#afafb0'
  let g:terminal_color_8 = '#4d4398'
  let g:terminal_color_9 = '#e2434e'
  let g:terminal_color_10 = '#44c67b'
  let g:terminal_color_11 = '#ff8408'
  let g:terminal_color_12 = '#6685c6'
  let g:terminal_color_13 = '#7332a6'
  let g:terminal_color_14 = '#9bcef1'
  let g:terminal_color_15 = '#b8b8c0'
else
  let g:terminal_ansi_colors = ['#281a14', '#d9333f', '#3eb370', '#ee7800', '#5a79ba', '#65318e', '#89c3eb', '#afafb0', '#4d4398', '#e2434e', '#44c67b', '#ff8408', '#6685c6', '#7332a6', '#9bcef1', '#b8b8c0']
endif
