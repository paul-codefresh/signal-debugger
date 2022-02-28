#!/bin/bash

set_traps() {
	echo "Setting traps"
	for s in {1..64} ;do 
		trap "echo trap $s $(kill -l $s)" $s;
	done
}

set_traps

echo "Entering main loop"
while true; do
	sleep 10
	echo "waiting..."
done
