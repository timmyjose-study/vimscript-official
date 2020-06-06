" To call a function in VimScript, use the :call command

" string functions

:echo strlen("Hello")
:echo strchars("Hello")
:echo strchars("привіт")
:echo tolower("Hello")
:echo toupper("hello")
:echo eval("1 + 2 * 3")
:echo trim("   Peanut butter   jelly   ")
:echo printf("%s: %d by %d\n", "Dimensions", 10, 20)

" list manipulation functions

:let my_list = [1, 2, "Hello", "true", "world"]
echo len(my_list)
echo get(my_list, 0)

:for idx in range(0, len(my_list) - 1)
:  echo printf("item %d = %s\n", idx, get(my_list, idx))
:endfor

" function names in VimScript always begin with a capital letter

:function Min(num1, num2)
:  if a:num1 < a:num2 
:    let smaller = a:num1
:  else
:    let smaller = a:num2
:  endif
:  return smaller
:endfunction

:function Max(num1, num2)
:  if a:num1 > a:num2
:    let bigger = a:num1
:  else
:    let bigger = a:num2
:  endif
:  return bigger
:endfunction

:function Abs(num)
:  if a:num < 0
:    return -a:num
:  endif
:  return a:num
:endfunction

" The ! at the end of the function name redefines the function (or functions)
" with the same name

:function! Min(num1, num2)
:  if a:num1 < a:num2
:    return a:num1
:  endif
:  return a:num2
:endfunction

" When marked with range, a:firstline and a:lastline are available

:function Show_lines() range
:  for lnum in range(a:firstline, a:lastline)
:    echo "Line " . lnum . " = " . getline(lnum)
:  endfor
:endfunction

:function Show_words() range
:  for lnum in range(a:firstline, a:lastline)
:    let words = split(getline(lnum))
:    if len(words) > 0
:      echo "Showing the " . len(words) . " words of line " . lnum
:      for widx in range(0, len(words) - 1)
:        echo "\tWord " . widx . " = " . get(words, widx)
:      endfor
:    endif
:  endfor
:endfunction

:function Count_words() range
:  let lnum = a:firstline
:  let n = 0
:  while lnum <= a:lastline
:    let n += len(split(getline(lnum)))
:    let lnum += 1
:  endwhile
:  echo "Found " . n . " words"
:endfunction

" Conversely, if not marked with range, then a function will be called for
" each line of the selected range, and the cursor is automatically set to the
" current line (as shown in the function below).
" For instance, if the following function were called so:
" :10,30call Number()
" then it would be called 20 times. It's more efficient to mark the function
" with `range` as shown above.

:function Number()
:  echo "line " . line(".") . " contains: " . getline(".")
:endfunction

" varargs 
" a:0 -> count of extra arguments
" a:1 to a:(a:0) -> the extra arguments

:function Show(start, ...)
:  echohl Title
:  echo "start is " . a:start
:  echohl none
:  let idx = 1
:  while idx <= a:0
:    echo "Argument " . idx . " is " . a:{idx}
:    let idx += 1
:  endwhile
:endfunction

" function references

:function! Right()
:  return "Right!"
:endfunction

:function! Left()
:  return "Left!"
:endfunction

:function! Funny_function(val)
:  if a:val == 1
:    let Afunc = function("Right")
:  else
:    let Afunc = function("Left")
:  endif
:  echo call (Afunc, [])
:endfunction