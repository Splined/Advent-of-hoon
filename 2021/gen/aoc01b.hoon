::  Advent of code. --- Day 1: Sonar Sweep ---
::  https://adventofcode.com/2021/day/1
::
/*  input  %txt   /lib/aoc/day1/txt
:-  %say
|=  *
:-  %noun
=<  (dmi (rinput (linput input)))
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
::  use roll to create new list with rolling sum
++  rinput
  |=  inp=(list @ud)
  =|  rlist=(list @ud)
  |-  ^-  (list @ud)
  ?.  (gte (lent inp) 3)
    rlist
  $(rlist (snoc rlist (roll (swag [0 3] inp) add)), inp (oust [0 1] inp))
--
