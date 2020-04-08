function! s:create_context() abort
  let p = nagomi#palette#dark#create()
  let c = p.cterm
  let g = p.gui

  let links = []
  let rules = []

  " Rules {{{
  call extend(rules, pgmnt#hi#group(
        \ ['ColorColumn', 'CursorColumn', 'CursorLine'], {
        \   'cterm': 'NONE',
        \   'ctermbg': c.cursorline_bg,
        \   'guibg': g.cursorline_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Comment', {
        \   'ctermfg': c.comment_fg,
        \   'guifg': g.comment_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Constant', {
        \   'ctermfg': c.purple,
        \   'guifg': g.purple,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Cursor', {
        \   'ctermbg': c.normal_fg,
        \   'ctermfg': c.normal_bg,
        \   'guibg': g.normal_fg,
        \   'guifg': g.normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'CursorLineNr', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.cursorlinenr_bg,
        \   'ctermfg': c.cursorlinenr_fg,
        \   'guibg': g.cursorlinenr_bg,
        \   'guifg': g.cursorlinenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Delimiter', {
        \   'ctermfg': c.normal_fg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffAdd', {
        \   'ctermbg': c.green_tint_bg,
        \   'ctermfg': c.green_tint_fg,
        \   'guibg': g.green_tint_bg,
        \   'guifg': g.green_tint_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffChange', {
        \   'ctermbg': c.lblue_tint_bg,
        \   'ctermfg': c.lblue_tint_fg,
        \   'guibg': g.lblue_tint_bg,
        \   'guifg': g.lblue_tint_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffDelete', {
        \   'ctermbg': c.red_tint_bg,
        \   'ctermfg': c.red_tint_fg,
        \   'guibg': g.red_tint_bg,
        \   'guifg': g.red_tint_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'DiffText', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.difftext_bg,
        \   'ctermfg': c.difftext_fg,
        \   'gui': 'NONE',
        \   'guibg': g.difftext_bg,
        \   'guifg': g.difftext_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Directory', {
        \   'ctermfg': c.lblue,
        \   'guifg': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['Error', 'ErrorMsg', 'WarningMsg'], {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.red,
        \   'guibg': g.normal_bg,
        \   'guifg': g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['EndOfBuffer', 'NonText', 'SpecialKey'], {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.specialkey_fg,
        \   'guibg': g.normal_bg,
        \   'guifg': g.specialkey_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Folded', {
        \   'ctermbg': c.folded_bg,
        \   'ctermfg': c.folded_fg,
        \   'guibg': g.folded_bg,
        \   'guifg': g.folded_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'FoldColumn', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.linenr_fg,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Function', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Identifier', {
        \   'cterm': 'NONE',
        \   'ctermfg': c.lblue,
        \   'guifg': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Include', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'LineNr', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.linenr_fg,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MatchParen', {
        \   'ctermbg': c.matchparen_bg,
        \   'ctermfg': c.matchparen_fg,
        \   'guibg': g.matchparen_bg,
        \   'guifg': g.matchparen_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'MoreMsg', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Normal', {
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.normal_fg,
        \   'guibg': g.normal_bg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Operator', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Pmenu', {
        \   'ctermbg': c.pmenu_bg,
        \   'ctermfg': c.pmenu_fg,
        \   'guibg': g.pmenu_bg,
        \   'guifg': g.pmenu_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSbar', {
        \   'ctermbg': c.pmenu_bg,
        \   'guibg': g.pmenu_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuSel', {
        \   'ctermbg': c.pmenusel_bg,
        \   'ctermfg': c.pmenusel_fg,
        \   'guibg': g.pmenusel_bg,
        \   'guifg': g.pmenusel_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PmenuThumb', {
        \   'ctermbg': c.pmenu_fg,
        \   'guibg': g.pmenu_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'PreProc', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Question', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'QuickFixLine', {
        \   'ctermbg': c.visual_bg,
        \   'ctermfg': c.normal_fg,
        \   'guibg': g.visual_bg,
        \   'guifg': g.normal_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Search', {
        \   'ctermbg': c.search_bg,
        \   'ctermfg': c.search_fg,
        \   'guibg': g.search_bg,
        \   'guifg': g.search_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SignColumn', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.linenr_fg,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.linenr_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Special', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellBad', {
        \   'ctermbg': c.red_tint_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guisp': g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellCap', {
        \   'ctermbg': c.blue_tint_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guisp': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellLocal', {
        \   'ctermbg': c.lblue_tint_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guisp': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'SpellRare', {
        \   'ctermbg': c.purple_tint_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'undercurl',
        \   'guisp': g.purple,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Statement', {
        \   'ctermfg': c.blue,
        \   'gui': 'NONE',
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['StatusLine', 'StatusLineTerm'], {
        \   'cterm': 'reverse',
        \   'ctermbg': c.statusline_fg,
        \   'ctermfg': c.statusline_bg,
        \   'gui': 'reverse',
        \   'guibg': g.statusline_fg,
        \   'guifg': g.statusline_bg,
        \   'term': 'reverse',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['StatusLineNC', 'StatusLineTermNC'], {
        \   'cterm': 'reverse',
        \   'ctermbg': c.statuslinenc_fg,
        \   'ctermfg': c.statuslinenc_bg,
        \   'gui': 'reverse',
        \   'guibg': g.statusline_fg,
        \   'guifg': g.statusline_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'StorageClass', {
        \     'ctermfg': c.blue,
        \     'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'String', {
        \   'ctermfg': c.lblue,
        \   'guifg': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Structure', {
        \   'ctermfg': c.blue,
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLine', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.statuslinenc_bg,
        \   'ctermfg': c.statuslinenc_fg,
        \   'gui': 'NONE',
        \   'guibg': g.statusline_bg,
        \   'guifg': g.statusline_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineFill', {
        \   'cterm': 'reverse',
        \   'ctermbg': c.statuslinenc_fg,
        \   'ctermfg': c.statuslinenc_bg,
        \   'gui': 'reverse',
        \   'guibg': g.statusline_fg,
        \   'guifg': g.statusline_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'TabLineSel', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.normal_bg,
        \   'ctermfg': c.normal_fg,
        \   'gui': 'NONE',
        \   'guibg': g.tablinesel_bg,
        \   'guifg': g.tablinesel_fg,
        \ }))
  call add(links, pgmnt#hi#link('TermCursor', 'Cursor'))
  call extend(rules, pgmnt#hi#group(
        \ 'TermCursorNC', {
        \   'ctermbg': c.comment_fg,
        \   'ctermfg': c.normal_bg,
        \   'guibg': g.comment_fg,
        \   'guifg': g.normal_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Title', {
        \   'ctermfg': c.orange,
        \   'gui': 'NONE',
        \   'guifg': g.orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Todo', {
        \   'ctermbg': c.todo_bg,
        \   'ctermfg': c.todo_fg,
        \   'guibg': g.todo_bg,
        \   'guifg': g.todo_fg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Type', {
        \   'ctermfg': c.blue,
        \   'gui': 'NONE',
        \   'guifg': g.blue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Underlined', {
        \   'cterm': 'underline',
        \   'ctermfg': c.blue,
        \   'gui': 'underline',
        \   'guifg': g.blue,
        \   'term': 'underline',
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'VertSplit', {
        \   'cterm': 'NONE',
        \   'ctermbg': c.statuslinenc_bg,
        \   'ctermfg': c.statuslinenc_bg,
        \   'gui': 'NONE',
        \   'guibg': g.statusline_bg,
        \   'guifg': g.statusline_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'Visual', {
        \   'ctermbg': c.visual_bg,
        \   'guibg': g.visual_bg,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'WildMenu', {
        \   'ctermbg': c.wildmenu_bg,
        \   'ctermfg': c.wildmenu_fg,
        \   'guibg': g.wildmenu_bg,
        \   'guifg': g.wildmenu_fg,
        \ }))
  " }}}

  " Rules for filetypes {{{
  " css
  call add(links, pgmnt#hi#link('cssBraces', 'Delimiter'))
  call add(links, pgmnt#hi#link('cssClassName', 'Special'))
  call add(links, pgmnt#hi#link('cssClassNameDot', 'Normal'))
  call add(links, pgmnt#hi#link('cssPseudoClassId', 'Special'))
  call add(links, pgmnt#hi#link('cssTagName', 'Statement'))

  " diff
  call extend(rules, pgmnt#hi#group(
        \ 'diffAdded', {
        \   'ctermfg': c.green,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'diffRemoved', {
        \   'ctermfg': c.red,
        \   'guifg': g.red,
        \ }))

  " help
  call add(links, pgmnt#hi#link('helpHyperTextJump', 'Constant'))

  " html
  call add(links, pgmnt#hi#link('htmlArg', 'Constant'))
  call add(links, pgmnt#hi#link('htmlEndTag', 'Statement'))
  call add(links, pgmnt#hi#link('htmlTag', 'Statement'))

  " json
  call add(links, pgmnt#hi#link('jsonQuote', 'Normal'))

  " php
  call add(links, pgmnt#hi#link('phpVarSelector', 'Identifier'))

  " python
  call add(links, pgmnt#hi#link('pythonFunction', 'Title'))

  " ruby
  call add(links, pgmnt#hi#link('rubyDefine', 'Statement'))
  call add(links, pgmnt#hi#link('rubyFunction', 'Title'))
  call add(links, pgmnt#hi#link('rubyInterpolationDelimiter', 'String'))
  call add(links, pgmnt#hi#link('rubySharpBang', 'Comment'))
  call add(links, pgmnt#hi#link('rubyStringDelimiter', 'String'))

  " sass
  call add(links, pgmnt#hi#link('sassClass', 'Special'))

  " sh
  call add(links, pgmnt#hi#link('shFunction', 'Normal'))

  " vim
  call add(links, pgmnt#hi#link('vimContinue', 'Comment'))
  call add(links, pgmnt#hi#link('vimFuncSID', 'vimFunction'))
  call add(links, pgmnt#hi#link('vimFuncVar', 'Normal'))
  call add(links, pgmnt#hi#link('vimFunction', 'Title'))
  call add(links, pgmnt#hi#link('vimGroup', 'Statement'))
  call add(links, pgmnt#hi#link('vimHiGroup', 'Statement'))
  call add(links, pgmnt#hi#link('vimHiTerm', 'Identifier'))
  call add(links, pgmnt#hi#link('vimMapModKey', 'Special'))
  call add(links, pgmnt#hi#link('vimOption', 'Identifier'))
  call add(links, pgmnt#hi#link('vimVar', 'Normal'))

  " xml
  call add(links, pgmnt#hi#link('xmlAttrib', 'Constant'))
  call add(links, pgmnt#hi#link('xmlAttribPunct', 'Statement'))
  call add(links, pgmnt#hi#link('xmlEndTag', 'Statement'))
  call add(links, pgmnt#hi#link('xmlNamespace', 'Statement'))
  call add(links, pgmnt#hi#link('xmlTag', 'Statement'))
  call add(links, pgmnt#hi#link('xmlTagName', 'Statement'))

  " yaml
  call add(links, pgmnt#hi#link('yamlKeyValueDelimiter', 'Delimiter'))
  " }}}

  " Rules for plugins {{{
  " [ALE](https://github.com/w0rp/ale)
  call extend(rules, pgmnt#hi#group(
        \ 'ALEErrorSign', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.red,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'ALEWarningSign', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.orange,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.orange,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'ALEVirtualTextError', {
        \   'ctermfg': c.red,
        \   'guifg': g.red,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'ALEVirtualTextWarning', {
        \   'ctermfg': c.orange,
        \   'guifg': g.orange,
        \ }))

  " [Denite](https://github.com/Shougo/denite.nvim)
  call add(links, pgmnt#hi#link('deniteMatched', 'Normal'))
  call add(links, pgmnt#hi#link('deniteMatchedChar', 'Title'))

  " [Git Gutter](https://github.com/airblade/vim-gitgutter)
  call extend(rules, pgmnt#hi#group(
        \ 'GitGutterAdd', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.green,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.green,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ ['GitGutterChange', 'GitGutterChangeDelete'], {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.lblue,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.lblue,
        \ }))
  call extend(rules, pgmnt#hi#group(
        \ 'GitGutterDelete', {
        \   'ctermbg': c.linenr_bg,
        \   'ctermfg': c.red,
        \   'guibg': g.linenr_bg,
        \   'guifg': g.red,
        \ }))



  " [vim-markdown](https://github.com/tpope/vim-markdown)
  call add(links, pgmnt#hi#link('markdownBold', 'Special'))
  call add(links, pgmnt#hi#link('markdownCode', 'String'))
  call add(links, pgmnt#hi#link('markdownCodeDelimiter', 'String'))
  call add(links, pgmnt#hi#link('markdownHeadingDelimiter', 'Comment'))
  call add(links, pgmnt#hi#link('markdownRule', 'Comment'))


  " Palettes for statusline plugins {{{
  call extend(rules, pgmnt#hi#group(
        \ 'nagomiALAccentRed', {
        \   'ctermfg': c.red,
        \   'guifg': g.red,
        \ }))
  " }}}

  let term_colors = [
        \   g.cursorline_bg,
        \   g.red,
        \   g.green,
        \   g.orange,
        \   g.blue,
        \   g.purple,
        \   g.lblue,
        \   g.normal_fg,
        \   g.comment_fg,
        \   pgmnt#color#adjust_color(g.red,       {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.green,     {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.orange,    {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.blue,      {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.purple,    {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.lblue,     {'saturation': +0.05, 'lightness': +0.05}),
        \   pgmnt#color#adjust_color(g.normal_fg, {'saturation': +0.05, 'lightness': +0.05}),
        \ ]
  let quoted_term_colors = map(
        \ copy(term_colors),
        \ '"''" . v:val . "''"')

  let neovim_term_defs = map(
        \ copy(quoted_term_colors),
        \ '"let g:terminal_color_" . v:key . " = " . v:val')
  let vim_term_defs = printf(
        \ 'let g:terminal_ansi_colors = [%s]',
        \ join(quoted_term_colors, ', '),
        \ )
  
  return {
        \   'links': links,
        \   'modified': strftime('%Y-%m-%d %H:%M%z'),
        \   'neovim_term_defs': neovim_term_defs,
        \   'rules': rules,
        \   'vim_term_defs': vim_term_defs,
        \ }
endfunction

call pgmnt#compile(s:create_context(), {
      \   'output': '../colors/nagomi.vim',
      \   'template': './template.vim',
      \ })

function! s:create_xline_context() abort
  let p = nagomi#palette#dark#create()
  let c = p.cterm
  let g = p.gui

     return {
        \   'col_base': string([
        \     g.xline_base_fg,
        \     g.xline_base_bg,
        \     c.xline_base_fg,
        \     c.xline_base_bg,
        \   ]),
        \   'col_tabfill': string([
        \     g.xline_edge_bg,
        \     g.statusline_fg,
        \     c.xline_edge_bg,
        \     c.statusline_fg,
        \   ]),
        \   'col_edge': string([
        \     g.xline_edge_fg,
        \     g.xline_edge_bg,
        \     c.xline_edge_fg,
        \     c.xline_edge_bg,
        \   ]),
        \   'col_tabsel': string([
        \     g.statusline_fg,
        \     g.xline_edge_bg,
        \     c.statusline_fg,
        \     c.xline_edge_bg,
        \   ]),
        \   'col_error': string([
        \     g.normal_bg,
        \     g.statusline_error,
        \     c.normal_bg,
        \     c.red,
        \   ]),
        \   'col_gradient': string([
        \     g.normal_fg,
        \     g.xline_gradient_bg,
        \     c.normal_fg,
        \     c.xline_gradient_bg,
        \   ]),
        \   'col_nc': string([
        \     g.statusline_fg,
        \     g.statusline_bg,
        \     c.statuslinenc_fg,
        \     c.statuslinenc_bg,
        \   ]),
        \   'col_warning': string([
        \     g.normal_bg,
        \     g.orange,
        \     c.normal_bg,
        \     c.orange,
        \   ]),
        \   'col_normal': string([
        \     g.normal_bg,
        \     g.blue,
        \     c.normal_bg,
        \     c.red,
        \   ]),
        \   'col_insert': string([
        \     g.normal_bg,
        \     g.green,
        \     c.normal_bg,
        \     c.green,
        \   ]),
        \   'col_replace': string([
        \     g.normal_bg,
        \     g.yellow,
        \     c.normal_bg,
        \     c.orange,
        \   ]),
        \   'col_visual': string([
        \     g.normal_bg,
        \     g.orange,
        \     c.normal_bg,
        \     c.orange,
        \   ]),
        \ }
endfunction

call pgmnt#compile(
      \ s:create_xline_context(), {
      \   'output': '../autoload/lightline/colorscheme/nagomi.vim',
      \   'template': './template-lightline.vim',
      \ })
