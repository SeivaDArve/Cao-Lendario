#!/bin/bash
__name__="Lendario"  # Change to the name of the script. Example: DRYa.sh, ezGIT.sh, Patuscas.sh (Set this variable at the head of the file, next to title)
__repo__=${v_REPOS_CENTER}/Cao-Lendario

# Sourcing DRYa Lib 1: Color schemes
   __name__="Lendario"  # Change to the name of the script. Example: DRYa.sh, ezGIT.sh, Patuscas.sh (Set this variable at the head of the file, next to title)
   v_lib1=${v_REPOS_CENTER}/DRYa/all/lib/libs/drya-lib-1-colors-greets.sh
   source $v_lib1 2>/dev/null || (read -s -n 1 -p "DRYa libs: $__name__: drya-lib-1 does not exist (error)" && echo )

   v_greet="Lendario"
   v_talk="cao-lendario: "

f_greet
f_talk; echo "Mes atual"
        echo

cal




if [ -z $1 ]; then
   echo "none"

elif [ $1 == "." ]; then
   bash e $__repo__/lendario.sh

elif [ $1 == "2" ] || [ $1 == "3" ]; then
   echo "2 or 3"

else
   echo "uDev: help"

fi
