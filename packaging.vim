" This is the calculator package

" this is good practice - unload the packages first and then redefine the
" function again

:if exists("TJ_calc_loaded") && TJ_calc_loaded == 1
:  delfunction TJ_calc_add
:  delfunction TJ_calc_sub
:  delfunction TJ_calc_mul
:  delfunction TJ_calc_div
:endif

:function TJ_calc_add(num1, num2)
:  return a:num1 + a:num2
:endfunction

:function TJ_calc_sub(num1, num2)
:  return a:num1 - a:num2
:endfunction

:function TJ_calc_mul(num1, num2)
:  return a:num1 * a:num2
:endfunction

:function TJ_calc_div(num1, num2)
:  return a:num1 / a:num2
:endfunction

" indicate that the package has been loaded

let TJ_calc_loaded = 1