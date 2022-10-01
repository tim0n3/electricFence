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
cp -r ./sources ~/
echo sources dir copied to $HOME 
cat << EOF >> ~/.bashrc

# source all functions
if [ -d ~/sources ]
then
    for f in ~/sources/*.sh
    do
       test -x $f && source $f
    done
fi
EOF