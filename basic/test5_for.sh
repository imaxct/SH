#/bin/bash

for ((i = 0; i < 5; ++i)); do
    echo $i
done

for x in `seq 0 4`; do
    echo $x
done

for x in $(seq 0 4); do
    echo $x
done

for x in {0..4}; do
    echo $x
done

for x in {0,2,7}; do
    echo $x
done
