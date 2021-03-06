let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  let col_base     = ['#383c3c', '#2e2930', 238, 233]
  let col_edge     = ['#383c3c', '#9ea1a3', 234, 245]
  let col_gradient = ['#afafb0', '#2b2b2b', 252, 236]
  let col_nc       = ['#383c3c', '#2e2930', 238, 233]
  let col_tabfill  = ['#9ea1a3', '#383c3c', 245, 234]
  let col_normal   = ['#16160e', '#5a79ba', 234, 203]
  let col_error    = ['#16160e', '#ea5506', 234, 203]
  let col_warning  = ['#16160e', '#ee7800', 234, 216]
  let col_insert   = ['#16160e', '#3eb370', 234, 150]
  let col_replace  = ['#16160e', '#f8b500', 234, 216]
  let col_visual   = ['#16160e', '#ee7800', 234, 216]
  let col_tabsel   = ['#383c3c', '#9ea1a3', 234, 245]

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
