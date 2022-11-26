#!/bin/bash

read -p "Please enter a number: " number
case "$number" in
        [0-9]) echo "you've entered a single digit number";;
        [0-9][0-9]) echo "you've entered a two digit number";;
        [0-9][0-9][0-9]) echo "you've entered a three digit number";;
        *) echo "you've entered no. more than three digits"
esac
