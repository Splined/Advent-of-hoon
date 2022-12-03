::  Advent of code.  --- Day 2: Rock Paper Scissors ---
::  
/*  input  %txt  /lib/aoc/day02/txt
:-  %say
|=  *
:-  %noun
=<  :+  %noun
      [%1 (part-one input)]
    [%2 (part-two input)]
|%
++  part-one
  |=  inp=(list @t)
  =/  inpt=(list tape)  (turn inp |=(a=@t (trip a)))
  %+  roll 
    inpt 
  |=  [a=tape b=@ud]
  ?~  a 
     0
  ?:  =(i.a 'A') 
    ?:  =(i.&3.a 'X')
      (add b 4)
    ?:  =(i.&3.a 'Y')
      (add b 8)
    (add b 3)
  ?:  =(i.a 'B') 
    ?:  =(i.&3.a 'X')
      (add b 1)
    ?:  =(i.&3.a 'Y')
      (add b 5)
    (add b 9)
  ?:  =(i.&3.a 'X')
    (add b 7)
  ?:  =(i.&3.a 'Y')
    (add b 2)
  (add b 6)
++  part-two
  |=  inp=(list @t)
  =/  inpt=(list tape)  (turn inp |=(a=@t (trip a)))
  %+  roll 
    inpt 
  |=  [a=tape b=@ud]
  ?~  a 
     0
  ?:  =(i.a 'A') 
    ?:  =(i.&3.a 'X')
      (add b 3)
    ?:  =(i.&3.a 'Y')
      (add b 4)
    (add b 8)
  ?:  =(i.a 'B') 
    ?:  =(i.&3.a 'X')
      (add b 1)
    ?:  =(i.&3.a 'Y')
      (add b 5)
    (add b 9)
  ?:  =(i.&3.a 'X')
    (add b 2)
  ?:  =(i.&3.a 'Y')
    (add b 6)
  (add b 7)
--
:: > +aoc02
:: [%noun [%1 9.177] %2 12.111]

