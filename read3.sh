#!/bin/bash
# -s will not show anything while providing inputs
read -s -p "Input your first name : " name
read -s -p "Input your age : " age
read -s -p "Input the town you are from: " town

echo "My name is $name"
echo "I am $age"
echo "I am from $town"
