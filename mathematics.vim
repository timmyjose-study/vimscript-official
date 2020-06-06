:let s:a = 10
:let s:b = 5
:let s:c = 2

:echo "a = " s:a ", b = " s:b ", c = " s:c

:echo "a + b * c = " s:a + s:b * s:c
:echo "(a + b) * c = " (s:a + s:b) * s:c
:echo "foo" . "bar"

:let i = 100
:echo i > 90 ? "i is big" : "i is small"

:unlet! s:a
:unlet! s:b
:unlet! s:c