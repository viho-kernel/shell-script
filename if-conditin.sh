#!/bin/bash

Number=$1

if [ $Number -le 20 ]
then
    echo "$Number is less than or equal to 20"
else
    echo "$Number is not less than or equal to 20"
fi