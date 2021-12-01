/*  input  %txt   /lib/aoc/day1/txt
:-  %say
|=  *
:-  %noun
=<  (dmi (linput input))
|%
++  dmi
  |=  inp=(list @ud)
  =|  sum=@ud
  =/  prev=@ud  10.000
  |-  ^-  @ud
  ?~  inp
    sum
  ?:  (gth i.inp prev)
    $(inp t.inp, prev i.inp, sum +(sum))
  $(inp t.inp, prev i.inp)
++  linput
  |=  inp=(list @t)
  ^-  (list @ud)
  (turn inp |=(a=@t (rash a dem)))
--
