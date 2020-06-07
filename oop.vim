" using dictionaries as objects

:let transdict = {}

" abstract class
:function transdict.translate(line) dict
:  return join(map(split(a:line), 'get(self.words, v:val, "???")'))
:endfunction

" concrete class
:let uk2nl = copy(transdict)
:let uk2nl.words = {"one" : "een", "two" : "twee", "three": "drie", "four" : "vier"}
:echo uk2nl.translate("three one")

" another concrete class
:let uk2de = copy(transdict)
:let uk2de.words = {"one" : "eins", "two" : "zwei", "three" : "drie", "four" : "vier"}
:echo uk2de.translate("three one")
