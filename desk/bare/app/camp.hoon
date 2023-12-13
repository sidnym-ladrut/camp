/-  camp
/+  dbug, default-agent
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0
  $:  %0
      scamps=(map term scamp:camp)
  ==
+$  card  card:agent:gall
++  scamp-path
  |=  [scamp=term =bowl:gall]
  ^-  path
  /(scot %p our.bowl)/[q.byk.bowl]/(scot %da now.bowl)/app/scamp/[scamp]/hoon
--
%-  agent:dbug
^-  agent:gall
=|  state-0
=*  state  -
|_  =bowl:gall
+*  this  .
    def  ~(. (default-agent this %.n) bowl)
::
++  on-init
  ^-  (quip card _this)
  `this
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  =/  old  !<(versioned-state old-state)
  ?-  -.old
    %0  `this(state old)
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+    mark  ~|(bad-poke/mark !!)
      %camp-action
    =+  !<(=action:camp vase)
    ?+    update=q.action  ~|(bad-poke/q.action !!)
        [%init ~]
      =+  scamp-text=.^(@t %cx (scamp-path p.action bowl))
      =+  scamp-hoon=(slap !>(..zuse) (ream scamp-text))
      =+  !<(scamp-core=scamp:camp scamp-hoon)
      =/  scamp-init=(quip card scamp:camp)  on-init:scamp-core
      :-  -.scamp-init
      this(scamps (~(put by scamps) p.action +.scamp-init))
    ::
        [%poke poke=*]
      ::  TODO: Validate the mark for this poke
      ::  TODO: Coerce the vase data using the provided mark
      =/  scamp-core=(unit scamp:camp)  (~(get by scamps) p.action)
      ?>  ?=(^ scamp-core)
      =/  scamp-poke=(quip card scamp:camp)  (on-poke:u.scamp-core poke.update)
      :-  -.scamp-poke
      this(scamps (~(put by scamps) p.action +.scamp-poke))
    ==
  ==
::
++  on-peek
  |=  path=(pole knot)
  ^-  (unit (unit cage))
  ?+    path  [~ ~]
      [%x %scamps ~]
    ``noun+!>(~(key by scamps))
  ::
      [%x %scamp scamp=term path=*]
    =/  scamp=(unit scamp:camp)  (~(get by scamps) scamp.path)
    ?~  scamp  [~ ~]
    (on-peek:u.scamp path.path)
  ==
++  on-agent  on-agent:def
++  on-arvo  on-arvo:def
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-fail  on-fail:def
--
