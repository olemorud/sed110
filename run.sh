#!/bin/sh

repeat=$(printf '%s' "$1" | wc -c)

next=$1
echo $next | tr '1' '#' | tr '0' ' '

for _ in `seq $repeat`; do
	next=$(./rule110.sed <<<$next)
	echo $next | tr '1' '#' | tr '0' ' '
done

