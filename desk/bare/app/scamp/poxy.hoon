/-  camp
^-  scamp:camp
|_  =bowl:gall
+*  this  .
++  on-init
  ^-  (quip card:agent:gall _this)
  :_  this
  ?:  .^(bean %gu /(scot %p our.bowl)/[dap.bowl]/(scot %da now.bowl)/scamp/taly)
    ~
  :_  ~
  [%pass /poxy/init %agent [our.bowl dap.bowl] %poke %camp-action !>([%taly %init ~])]
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card:agent:gall _this)
  :_  this
  :_  ~
  [%pass /poxy/poke %agent [our.bowl dap.bowl] %poke %camp-action !>([%taly %poke mark vase])]
++  on-peek
  |=  path=(pole knot)
  ^-  (unit (unit cage))
  ?+    path  [~ ~]
      [taly=@ ~]
    ``atom+!>(.^(@ %gx /(scot %p our.bowl)/[dap.bowl]/(scot %da now.bowl)/scamp/taly/[taly.path]/noun))
  ==
--
