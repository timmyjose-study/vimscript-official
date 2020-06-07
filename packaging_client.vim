source ./packaging.vim

:function! Read_num()
:  call inputsave()
:  let num = input("Enter a number: ")
:  call inputrestore()
:  return num
:endfunction

" demo

:let num1 = Read_num()
:let num2 = Read_num()

:echo " "
:echo printf("Sum of %d and %d = %d\n", num1, num2, TJ_calc_add(num1, num2))
:echo printf("Difference of %d and %d = %d\n", num1, num2, TJ_calc_sub(num1, num2))
:echo printf("Product of %d and %d = %d\n", num1, num2, TJ_calc_mul(num1, num2))
:echo printf("Quotient of %d and %d = %d\n", num1, num2, TJ_calc_div(num1, num2))
