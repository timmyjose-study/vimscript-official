" non-namespaced variables in Vim are global by default. Using the "s"
" namespace makes them local to the script where they are defined (and used)

:let s:count = 1
:while s:count <= 5
:  echo "s:count is " s:count
:  let s:count += 1
:endwhile

" various other kinds of variables are defined by their namespace. 
" s:foo -> script local
" b:foo -> buffer local
" w:foo -> window local
" g:foo -> same as "foo", global
" v:foo -> variable predefined by Vim

" deleting a variable
:unlet! s:count

" strangely enough, local variables are not automatically freed when the
" script finishes executing

:if !exists("s:call_count")
:  let s:call_count = 0
:endif

:let s:call_count += 1
:echo "This script has been called " s:call_count " time(s)"