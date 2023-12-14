/-  camp
^-  scamp:camp
=|  tallies=(map term @ud)
|_  =bowl:gall
+*  this  .
++  on-init
  ^-  (quip card:agent:gall _this)
  `this(tallies *(map term @ud))
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card:agent:gall _this)
  ?+    mark  ~|(bad-poke/mark !!)
      %atom
    =+  !<(taly=term vase)
    =/  curr-taly=@ud  (~(gut by tallies) taly 0)
    `this(tallies (~(put by tallies) taly +(curr-taly)))
  ==
++  on-peek
  |=  path=(pole knot)
  ^-  (unit (unit cage))
  ?+    path  [~ ~]
      [taly=@ ~]
    ``atom+!>((~(gut by tallies) taly.path 0))
  ==
--
