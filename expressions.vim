" numbers, strings, and variables are all expressions. In addition, you have a
" few special expressions - $ENV_VAR, &optiona, @register

:echo "The value of 'tabstop' is " &ts
:echo "Your home directory is " $HOME

:if @a > 5
:  echo "The value stored in the a register is greater than 5"
:endif

:echo "The value of ic is " &ic
:let old_ic = &ic
:set ic
:echo "The new value of ic is " &ic
:let &ic = old_ic
:echo "The value of restored ic is " &ic