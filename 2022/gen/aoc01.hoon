::  Advent of code.  --- Day 1: Calorie Counting ---
::
/*  input  %txt  /lib/aoc/day01/txt
:-  %say
|=  *
:-  %noun
=<  =/  first=[@ud @ud]  (find-max (sum-lists (conv-list (lol input))))
    =/  second=[@ud @ud]   (find-max (del-max (sum-lists (conv-list (lol input)))))
    =/  third=[@ud @ud]  (find-max (del-max (del-max (sum-lists (conv-list (lol input))))))
:^    first
    second
  third
(add +.first (add +.second +.third))
|%
::  make a list of lists
++  lol
  |=  inp=(list @t)
  =|  lo=(list (list @t))
  =|  li=(list @t)
  |-  ^-  (list (list @t))
  ?~  inp
    lo
  ?:  =('' i.inp)  
    $(lo (snoc lo li), li *(list @t), inp t.inp)
  $(li (snoc li i.inp), inp t.inp)
::  convert list of @t to list of @ud
++  linput
  |=  inp=(list @t)
  ^-  (list @ud)
  (turn inp |=(a=@t (rash a dem)))
::  sum each list in a list of lists
++  sum-lists
  |=  inp=(list (list @ud))
  =|  sums=(list @ud)
  (turn inp |=(a=(list @ud) (roll a add)))
::  convert list of lists of @t to @ud
++  conv-list
  |=  inp=(list (list @t))
  ^-  (list (list @ud))
  (turn inp |=(a=(list @t) (linput a)))
++  find-max
  |=  inp=(list @ud)
  =|  max=@ud
  =|  maxi=@ud  :: zero indexed position
  =|  i=@ud 
  |-  ^-  [@ud @ud]
  ?~  inp
    [maxi max]
  ?.  (gth i.inp max)
    $(i +(i), inp t.inp)
  $(max i.inp, i +(i), maxi i, inp t.inp)
++  del-max
  |=  inp=(list @ud)
  ^-  (list @ud)
  =/  ind=[@ud @ud]  (find-max inp)
  (oust [-.ind 1] inp)
--
::  > +aoc01  
::  [[179 66.719] [82 66.339] [94 65.493] 198.551]
