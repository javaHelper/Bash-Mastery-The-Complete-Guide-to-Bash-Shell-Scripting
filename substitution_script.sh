#!/bin/bash

time=$(date +%H:%m:%S)

echo "HELLO $USER, the right time now is $time"


newtime=$(date +%d-%m-%Y_%H-%M-%S)

echo $newtime
