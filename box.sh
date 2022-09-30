#!/bin/bash

# initialize all functions                                 
for i in ./sources/rules/*;
  do source $i
done

box()
{
	# Get the options ;; run the functions
while getopts ":1|2|3|h" option; do
   case $option in
      h) # display Help
         _help
         exit 0;;
      1) # display device temps
         _watch _thermals
         exit 0;;
      2) # purge logs in /var/log/*
        _purge
        exit 0;;
      3) # catchall print help
        _help
        exit 0;;
      4) 
      sldjflsjf
      exit0;;
      *)
      _help
      exit0;;
   esac
done

}