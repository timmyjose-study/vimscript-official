" simple exception handling: try - catch - finally - entry

:try
:  read ~/templates/pascal.tmpl
:catch /E484:/
:  echo "Sorry, the Pascal template file could not be found."
:endtry

:try
:  read ~/templates/pascal.impl
:catch 
:  echo "Something went wrong."
:endtry

" tempname() creates a temporary name as per the local OS' conventions

:let tmp = tempname()
:try
:  exe "..$write " . tmp
:  exe "!filter " . tmp
:  .,$delete
:  exe "$read " . tmp
:finally
:  echo "deleting " . tmp
:endtry
