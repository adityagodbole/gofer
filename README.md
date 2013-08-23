## To compile pugofer:

In the source directory `src`:
0. Edit prelude.h to set your platform to 1. Make sure that others are set to 0. Note that OSX compiles with NETBSD.
0. Edit the Makefile to suit your needs
0. run 'make'

That should be all ideally.

## To lauch:

Running `./launch.sh` from the repostory root should give you a gofer session
with a temporary module loaded along with the prelude. You can type `:e` to
edit the temporary module in $EDITOR. Quitting the editor causes the changes
to be reloaded.
The name of the prelude can given in the ENV variable `PRELUDE`. By default, it is 
`pusimple`. All arguments passed to launch.sh will be subsequently passed to the
gofer command.

Eg.
```
$ ./launch.sh

Gofer Version 2.30a
Modifications for pugofer Rusi Mody
Copyright (c) Mark P Jones 1991-1994
Copyright (c) Rusi Mody 1995-2012

Gofer session for:
./lib/pusimple.prelude
/var/folders/lh/tf7l9p512hnd5jkhgrb1rfz40000gn/T//pugofer-25062.hs
?
```

```
$ GOFERPRE=simple ./launch.sh -S
Gofer Version 2.30a
Modifications for pugofer Rusi Mody
Copyright (c) Mark P Jones 1991-1994
Copyright (c) Rusi Mody 1995-2012

Gofer session for:
./lib/simple.prelude
/var/folders/lh/tf7l9p512hnd5jkhgrb1rfz40000gn/T//pugofer-18161.hs
?
```
