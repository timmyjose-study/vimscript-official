" execute and eval

:let optname = "path"
:let optval = eval('&' . optname)
echo optval
echo "path = " &path
