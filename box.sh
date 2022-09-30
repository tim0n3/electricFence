#!/bin/bash

# initialize all functions                                 
for i in ./sources/rules/*;
  do source $i
done

box()
{
	# Get the options ;; run the functions
while getopts ":1|2|3|4|h" option; do
   case $option in
      h) # display switches and options
         _help
         exit 0;;
      1) # nat rules
         # nat table function here
         exit 0;;
      2) # raw rules
        # raw table function here
        exit 0;;
      3) # mangle table
        # mangle table rules here
        exit 0;;
      4)  # filter rules
        # filter table rules here
      exit 0;;
      *) # catchall print help
      _help
      exit0;;
   esac
done
}