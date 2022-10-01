#!/bin/bash
# initialize all functions
shopt -s globstar                     
for i in ./sources/*;
  do source $i ;\
  echo -e "Importing functions from: \n";ls -lsaFhR --color=auto $i
done

# debug check for sources import
#for files in **/*.sh;
#    do echo -e "Importing functions from: \n";ls -lsaFhR --color=auto $files
#done

#alternate method
#find . -name "*.sh" -print0 | while read -d $'\0' file
##do
 #   source $file
#done

box()
{
	# Get the options ;; run the functions
    while getopts ":1|2|3|4|h" option; do
        case $option in
            h) # display switches and options
               _help
               #exit 0;;
            1) # nat rules
                # nat table function here
               #exit 0;;
            2) # raw rules
            # raw table function here
               #exit 0;;
            3) # mangle table
            # mangle table rules here
               #exit 0;;
            4)  # filter rules
            # filter table rules here
               #exit 0;;
            *) # catchall print help
               _help
               #exit 0;;
        esac
    done
}
box -h;