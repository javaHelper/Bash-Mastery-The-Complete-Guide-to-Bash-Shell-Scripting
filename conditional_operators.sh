#!/bin/bash

echo "[[ 2 -eq 2 ]]"
[[ 2 -eq 2 ]]; echo $?

echo "-----------------------"

echo "[[ 1 -eq 2 ]]"
[[ 1 -eq 2 ]]; echo $?
echo "--------------"

echo "[[ 1 -ne 2 ]]"
[[ 1 -ne 2 ]]; echo $?
echo "---------------"

echo "[[ 2 -ne 2 ]]"
[[ 2 -ne 2 ]]; echo $?
echo "----------------"

aa=hello
b=goodbye
[[ $a = $b ]] ; echo $?
