" basic while loop
:let i = 1
:while i <= 5
:  echo "count is " i
:  let i = i + 1
:endwhile

" the same example works without the colons - they are in there to make them
" stand out as Ex mode commands
let j = 1
while j <= 5
  echo "count is (again) " j
  let j = j + 1
endwhile

" for loop version
:for i in range(1, 5)
:  echo "count is (yet again) " i
:endfor

" as before, the colons are optional
for j in range(1, 5)
  echo "count is (one final time) " j
endfor