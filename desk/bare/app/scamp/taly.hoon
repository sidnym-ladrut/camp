::  /-  camp
::  ^-  scamp:camp
=|  tallies=(map term @ud)
|%
++  on-init
  ^-  (quip card:agent:gall _..on-init)
  :-  ~
  %=    ..on-init
      tallies
    *(map term @ud)
  ==
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card:agent:gall _..on-init)
  ?+    mark  ~|(bad-poke/mark !!)
      %atom
    =+  !<(taly=term vase)
    =/  curr-taly=@ud  (~(gut by tallies) taly 0)
    :-  ~
    %=    ..on-init
        tallies
      (~(put by tallies) taly +(curr-taly))
    ==
  ==
++  on-peek
  |=  path=(pole knot)
  ^-  (unit (unit cage))
  ?+    path  [~ ~]
      [taly=@ ~]
    ``atom+!>((~(gut by tallies) taly.path 0))
  ==
--
