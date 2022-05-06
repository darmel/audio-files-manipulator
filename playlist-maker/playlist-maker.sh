#!/bin/bash

iteration=0;
while test $iteration -lt $1; do
name=$(cat /dev/urandom | tr -dc '[:alpha:]' | fold -w20 | head -n 1)
echo $name
cp $2  $name.m3u
echo $iteration
iteration=$((iteration+1));
done
