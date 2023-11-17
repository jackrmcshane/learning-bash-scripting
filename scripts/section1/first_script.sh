#!/bin/bash

greeting="hello there!"
echo $greeting
echo ${greeting:6}
echo ${greeting:6:3}
echo ${greeting/there/everybody}
echo ${greeting//e/_}
echo ${greeting/e/_}
echo $greeting:4:3
