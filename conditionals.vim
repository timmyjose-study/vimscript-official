:echo "The value of term is " &term

:if &term == "xterm"
:  echo "xterm detected"
:elseif &term == "xterm-256color"
:  echo "xterm-256color detected"
:elseif &term == "vt100"
:  echo "vt100 detected"
:else
:  echo "it's something else"
:endif

:echo "Vim version is " v:version
:if v:version >= 700
:  echo "congratulations"
:else
:  echo "Upgrade!"      
:endif

:let str = "Hello, world"
:if str =~ " "
:  echo "str contains a space"
:endif
:if str !~ '\,$'
:  echo "str does not end with a fullstop"
:endif

:let s1 = "hello"
:let s2 = "Hello"

:echo "is s1 == s2? " s1 == s2
:echo "is s1 == s2? " s1 ==? s2

:for i in range(1, 5)
:  sleep 100m
:  echo "count is " i
:endfor