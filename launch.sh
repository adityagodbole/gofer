#!/bin/bash
initial=$TMPDIR/pugofer-$RANDOM.hs
echo 'this = "Gofer scratchpad. Delete this line."' >  $initial
selfdir=`dirname $0`
GOFER=`which gofer`
if [[ -z $GOFER ]]; then
	GOFER="$selfdir/src/gofer"
fi
prelude=$1
if [[ -z $prelude ]]; then
	prelude='pusimple'
fi
export PUGOFER="$selfdir/lib/$prelude.prelude"
$GOFER $initial
rm -f $initial

