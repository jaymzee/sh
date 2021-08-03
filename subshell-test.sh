#!/bin/bash

(
for i in 1 2 3 4 5; do
    echo "Subshell running ..." $i $$
    sleep 1
done
)&

for i in 1 2 3; do
    echo "main shell running ..." $i $$
    sleep 1
done

wait

exit $?
