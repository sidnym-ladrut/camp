|%
++  scamp
  $_  ^|
  |%
  ++  on-init
    *(quip card:agent:gall _^|(..on-init))
  ++  on-poke
    |~  [mark vase]
    *(quip card:agent:gall _^|(..on-init))
  ++  on-peek
    |~  path
    *(unit (unit cage))
  --
+$  action
  (pair term update)
::
+$  update
  $%  [%init ~]
      [%poke =mark =vase]
      [%stub ~]  :: to avoid mint vain errors with ?+
  ==
--
