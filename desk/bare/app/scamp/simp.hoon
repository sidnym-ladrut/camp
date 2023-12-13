::  /-  camp
::  ^-  scamp:camp
|%
++  on-init
  ^-  (quip card:agent:gall _..on-init)
  `..on-init
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card:agent:gall _..on-init)
  `..on-init
++  on-peek
  |=  path=(pole knot)
  ^-  (unit (unit cage))
  ``noun+!>(~)
--
