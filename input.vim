" Showing basic I/O using VimScript

:function! Read_and_print_name()
:  let name = input("Enter your name: ")
:  echo " "
:  echo "Hello, " . name . ". Nice to meet you!"
:endfunction

:call Read_and_print_name()

:function! Append_name_to_current_line()
:  let curline = getline(".")
:  call inputsave()      
:  let name = input("Enter name: ")
:  call inputrestore()
:  echo printf("\n%s %s\n", curline, name)
:endfunction

:call Append_name_to_current_line()