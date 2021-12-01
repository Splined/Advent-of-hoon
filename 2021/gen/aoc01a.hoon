::  Advent of code. --- Day 1: Sonar Sweep ---
::  https://adventofcode.com/2021/day/1
::
/*  input  %txt   /lib/aoc/day1/txt
:-  %say
|=  *
:-  %noun
=<  (dmi (linput input))
|%
++  dmi
  |=  inp=(list @ud)
  =|  sum=@ud
::  This is just a hack to ignore the first entry, since we know it's less that 10,000
  =/  prev=@ud  10.000
  |-  ^-  @ud
  ?~  inp
    sum
  ?:  (gth i.inp prev)
    $(inp t.inp, prev i.inp, sum +(sum))
  $(inp t.inp, prev i.inp)
::  convert the text file to a list of integers
++  linput
  |=  inp=(list @t)
  ^-  (list @ud)
  (turn inp |=(a=@t (rash a dem)))
--
