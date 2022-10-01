#!/bin/bash

############################################################
# Help                                                     #
############################################################
_help()
{
   # Display Help
   echo "Here are the valid options for this script."
   echo
   echo "Syntax: ./script [-1|2|3|4|h]"
   echo "options:"
   echo "1     Run nat rules script."
   echo "2     Run raw rules script."
   echo "3     Run mangle rules script."
   echo "4     Run filter rules script."
   echo "h     Display this help page."
   echo .
}