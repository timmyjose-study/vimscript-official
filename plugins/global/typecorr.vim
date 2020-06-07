" Vim global plugin for correcting typing mistakes
" Last Change: 2020 Jun 07
" Maintainer: Timmy Jose <zoltan.jose@gmail.com>
" License: This file is placed in the public domain.

:set fileformat=unix

" save compatibility options
:let s:save_cpo =&cpo
:set cpo&vim

:if exists("g:loaded_typecorr")
:  finish
:endif

:let g:loaded_typecorr = 1

:iabbrev teh the
:iabbrev otehr other
:iabbrev wnat want
:iabbrev synchronisation
          \ synchronization

" the four entries above
:let s:count = 4

:if !hasmapto("<Plug>TypecorrAdd")
:  map <unique> <Leader>a <Plug>TypecorrAdd
:endif

" always use SID with mappings
:noremap <unique> <script> <Plug>TypecorrAdd <SID>Add
:noremap <script> Plugin.Add\ Correction <SID>Add
:noremap <SID>Add :call <SID>Add(expand("<cword>"), 1)<CR>

" script-local function
:function s:Add(from, correct)
:  let to = input("type the correction for " . a:from . ": ")
:  execute ":iabbrev " . a:from . " " . to
:  if a:correct | execute "normal viws\<C-R>\" \b\e" | endif
:  let s:count += 1
:  echo s:count . " corrections now"
:endfunction

:if !exists(":Correct")
:  command -nargs=1 Correct :call s:Add(<q-args>, 0)
:endif

" restore compatibility options
:let &cpo = s:save_cpo
:unlet s:save_cpo