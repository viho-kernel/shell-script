#!/bin/bash

FRUITS=("Mango" "Apple" "Banana" "Grapes")
echo "First Fruit: ${FRUITS[0]}"
echo "Second Fruit: ${FRUITS[1]}"
echo "All Fruits: ${FRUITS[@]}"
echo "Total number of fruits: ${#FRUITS[@]}"