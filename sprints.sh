#!/bin/bash

let l=$(($(ls -t | grep sprint | head -1 | tr -d 'sprint')+1))
folder_name=sprint$l
#echo $folder_name
mkdir $folder_name
