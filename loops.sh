#!/bin/bash

number() {

for i in {1..5}
do 
    echo "echo $i"      
done
echo "Loop finished"
}

number >> output.txt
