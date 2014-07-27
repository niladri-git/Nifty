#!/bin/bash

./close.pl  | grep '\*\*' | awk '{print $1 "  " $2 "  " $3}' | sed "s/'//g" > close.txt

echo "Genetated close.txt"
echo
