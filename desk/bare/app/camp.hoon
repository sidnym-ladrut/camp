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
      =+  scamp-vase=.^(^vase %ca (scamp-path p.action bowl))
      =+  !<(scamp-core=scamp:camp scamp-vase)
      =/  scamp-init=(quip card scamp:camp)
        ~(on-init scamp-core bowl)
      :-  -.scamp-init
      this(scamps (~(put by scamps) p.action +.scamp-init))
    ::
        [%poke poke=*]
      ::  TODO: Validate the mark for this poke
      ::  TODO: Coerce the vase data using the provided mark
      =/  scamp-core=(unit scamp:camp)  (~(get by scamps) p.action)
      ?>  ?=(^ scamp-core)
      =/  scamp-poke=(quip card scamp:camp)
        (~(on-poke u.scamp-core bowl) poke.update)
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
      [%u %scamp scamp=term ~]
    ``atom+!>((~(has by scamps) scamp.path))
  ::
      [%x %scamp scamp=term path=*]
    =/  scamp-core=(unit scamp:camp)  (~(get by scamps) scamp.path)
    ?~  scamp-core  [~ ~]
    (~(on-peek u.scamp-core bowl) path.path)
  ==
++  on-agent  on-agent:def
++  on-arvo  on-arvo:def
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-fail  on-fail:def
--
