#!/bin/bash
# initialize all functions
#shopt -s globstar                     
#for i in ./sources/*;
 # do source $i ;\
 # echo -e "Importing functions from: "; ls -CR --color=auto $i
#done

# debug check for sources import
#for files in **/*.sh;
#    do echo -e "Importing functions from: \n";ls -lsaFhR --color=auto $files
#done

#alternate method
#find . -name "*.sh" -print0 | while read -d $'\0' file
##do
 #   source $file
#done
cat << EOF >> ~/.bashrc

# source all functions
src=./sources 
if [ -d $src ]
then
    for f in $src/*.sh
    do
       test -x $f && source $f
    done
fi
EOF