::  Advent of code. --- Day 2: Dive! ---
::  https://adventofcode.com/2021/day/2
::
/*  input  %txt  /lib/aoc/day2/txt
:-  %say
|=  *
=<  :+  %noun
      [%1 (day1 input)]
    [%2 (day2 input)]
|%
++  day1 
  |=  rinp=(list cord)  
  =/  inp=(list [term @ud])  (process-file input)
  =|  hrzt=@ud
  =|  dpth=@ud
  ^-  @ud
  |-
  ?~  inp
    (mul hrzt dpth)
  ?+  +2.i.inp  !!
    %forward  $(hrzt (add +3.i.inp hrzt), inp t.inp)
    %down  $(dpth (add +3.i.inp dpth), inp t.inp)
    %up  $(dpth (sub dpth +3.i.inp), inp t.inp)
  ==
++  day2
  |=  rinp=(list cord)  
  =/  inp=(list [term @ud])  (process-file input)
  =|  hrzt=@ud
  =|  dpth=@ud
  =|  aim=@ud
  ^-  @ud
  |-
  ?~  inp
    (mul hrzt dpth)
  ?+  +2.i.inp  !!
    %forward  $(hrzt (add +3.i.inp hrzt), dpth (add dpth (mul aim +3.i.inp)), inp t.inp)
    %down  $(aim (add aim +3.i.inp), inp t.inp)
    %up  $(aim (sub aim +3.i.inp), inp t.inp)
  ==
++  process-file
  |=  inp=(list cord)
  =|  out=(list [term @ud])
  |-  ^-  (list [term @ud])
  ?~  inp
    out
  $(out (snoc out (process-line i.inp)), inp t.inp) 
++  process-line
  |=  inp=cord
  ^-  [term @ud]
  =/  tin=tape  (trip inp)
  =/  index=(unit @ud)  (find " " tin)
  ?~  index 
    [%nil 0] 
  :-  `term`(crip (scag u.index tin))
  (scan (slag +(u.index) tin) dem)
::++  test
::  |-  ^-  [term @ud]
::  ?~  input 
::    [%nil 0]
::  =/  lin=tape  (trip i.input)
::  =/  index=(unit @ud)  (find " " lin)
::  ?~  index 
::    [%nil 0] 
::  :-  `term`(crip (scag u.index lin))
::  (scan (slag +(u.index) lin) dem)
--
