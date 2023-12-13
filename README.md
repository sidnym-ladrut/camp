# camp #

A minimal reproduction of Gall as an Urbit agent

## Build/Develop ##

All commands assume that the current working directory is this repository's
base directory and use [durploy] to streamline various Urbit development
workflows.

### Generate Full Desk ###

```bash
cd ./desk
rm -rI full/
find bare -type f | while read f; do { d=$(dirname "$f" | sed "s/^bare/full/"); mkdir -p "$d"; ln -sr -t "$d" "$f"; }; done
mkdir -p full/lib/ full/mar full/sur
ln -sr ../LICENSE.txt full/license.txt
git clone --depth 1 https://github.com/urbit/yard yar
cp yar/desk/lib/{dbug*,default-agent*,skeleton*,docket*} full/lib/
cp yar/desk/mar/{atom*,bill*,docket*,hoon*,kelvin*,mime*,noun*,ship*,txt*} full/mar/
cp yar/desk/sur/docket* full/sur/
```

### Deploy Full Desk ###

```bash
./durploy desk -w zod camp ./desk/full/
```

## Test ##

### Trivial ###

```
:camp &camp-action [%simp %init ~]
.^((set term) %gx /=camp=/scamps/noun)
.^(noun %gx /=camp=/scamp/simp/noun)
:camp &camp-action [%simp %poke noun+!>(~)]
```

### Simple ###

```
:camp &camp-action [%taly %init ~]
:camp &camp-action [%taly %poke atom+!>(%a)]
.^(@ud %gx /=camp=/scamp/simp/a/noun)
:camp &camp-action [%taly %poke atom+!>(%a)]
:camp &camp-action [%taly %poke atom+!>(%b)]
.^(@ud %gx /=camp=/scamp/simp/a/noun)
.^(@ud %gx /=camp=/scamp/simp/b/noun)
```


[urbit]: https://urbit.org
[durploy]: https://github.com/sidnym-ladrut/durploy
