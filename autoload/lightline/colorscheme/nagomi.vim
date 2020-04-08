let s:save_cpo = &cpo
set cpo&vim

let s:darkbg = '#2e2930'
let s:darkfg = '#383c3c' "羊羹色
let s:lightfg = '#'
let s:normalbg = '#83ccd2' "白郡
let s:insertbg = '#aacf53' "萌黄
let s:visualbg = '#ee7948' "黃丹
let s:replacebg = '#f8b500' "山吹色
let s:error = '#ea5506' "金赤
let s:gradientbg = '#2b2b2b'
let s:gradientfg = '#f3f3f2'

function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  let col_base     = [s:darkfg, s:darkbg, 238, 233]
  "let col_base     = [s:darkfg, '#0f1117', 238, 233]
  let col_edge     = ['#17171b', '#818596', 234, 245]
  "let col_gradient = ['#6b7089', '#2e313f', 242, 236]
  let col_gradient = [s:gradientfg, s:gradientbg, 242, 236]
  let col_nc       = [s:darkfg, '#0f1117', 238, 233]
  let col_tabfill  = [s:darkfg, '#0f1117', 238, 233]
  let col_normal   = ['#17171b', s:normalbg, 234, 245]
  let col_error    = [s:darkfg, s:error, 234, 203]
  let col_warning  = ['#161821', '#e2a478', 234, 216]
  let col_insert   = ['#161821', s:insertbg, 234, 110]
  let col_replace  = ['#161821', s:replacebg, 234, 216]
  let col_visual   = ['#161821', s:visualbg, 234, 150]
  let col_tabsel   = ['#17171b', '#818596', 234, 245]

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_gradient]
  let p.replace.left = [
        \ col_replace,
        \ col_gradient]
  let p.visual.left = [
        \ col_visual,
        \ col_gradient]

  let p.inactive.middle = [
        \ col_nc]
  let p.inactive.left = [
        \ col_nc,
        \ col_nc]
  let p.inactive.right = [
        \ col_nc,
        \ col_nc]

  let p.tabline.middle = [
        \ col_tabfill]
  let p.tabline.left = [
        \ col_tabfill]
  let p.tabline.tabsel = [
        \ col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


let g:lightline#colorscheme#nagomi#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
