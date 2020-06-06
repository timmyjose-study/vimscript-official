:if !exists("s:call_count")
:  let s:call_count = 0
:endif
:let s:call_count += 1
:echo "Script called " s:call_count " time(s)"

:let s:name = "Peter"
:echo s:name

" overwrites the previous value
:let s:name = '"Alberto"'
:echo s:name

:unlet! s:name