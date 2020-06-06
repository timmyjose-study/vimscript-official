" VimScript supports two composite types - list and dictionaries
" lists

:let alist = ["hello", "world", "again"]

:let empty_list = []

:function! Display_list(list)
:  for item in a:list 
:    echon item . " "
:  endfor
:endfunction

:call Display_list(empty_list)

:for item in alist
:  call add(empty_list, item)
:endfor

:call Display_list(empty_list)
:echo ""

:let list1 = [1, 2, 3]
:let list2 = [4, 5, 6]
:call Display_list(list1 + list2)

:function! Count_down_to_zero(n)
:  if a:n > 0 
:    for i in range(a:n, 0, -1)
:      echo i
:    endfor
:  endif
:endfunction

:function! Print_range() range
:  for line in range(a:firstline, a:lastline)
:    echo getline(line)
:  endfor
:endfunction

" dictionaries

:let uk2nl = { "one" : "een", "two": "twee", "three" : "drie" }

:function! Print_dictionary(dict)
:  for key in keys(a:dict)
:    echo key . " = " . a:dict[key]
:  endfor
:echo " "
:endfunction

:call Print_dictionary(uk2nl)

:function Print_sorted_dictionary(dict)
:  for key in sort(keys(a:dict))
:    echo key . " = " . a:dict[key]
:  endfor
:echo " "
:endfunction

:call Print_sorted_dictionary(uk2nl)

:let uk2nl.four = "vier"

:call Print_sorted_dictionary(uk2nl)
:echo uk2nl

" Just like with `range`, we can indicate that a function is meant to be
" called from a dictionary by marking it with `dict` - now `self` refers to
" this dictionary. The following example is a bit of metaprogramming in 
" VimScript!

:function uk2nl.translate(line) dict
:  return join(map(split(a:line), 'get(self, v:val, "???")'))
:endfunction

:echo uk2nl.translate('three four five one two zero')