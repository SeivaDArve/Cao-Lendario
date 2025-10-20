#!/bin/bash
# Title: Cao-Lendario
# Description: Repo Publica, cujas datas, lembretes, agendamentos sao info proveninete de outras repos que Lendario vai la absorver (path em $v_xyx_repo/all/lebdario/cao-lendario-food.sh
#              Esta repo vai a ${v_REPOS_CENTER}/ buscar recurivamente 'cao-lendario-food'

__name__="Lendario"  # Change to the name of the script. Example: DRYa.sh, ezGIT.sh, Patuscas.sh (Set this variable at the head of the file, next to title)
__repo__=${v_REPOS_CENTER}/Cao-Lendario

# Sourcing DRYa Lib 1: Color schemes
   __name__="Lendario"  # Change to the name of the script. Example: DRYa.sh, ezGIT.sh, Patuscas.sh (Set this variable at the head of the file, next to title)
   v_lib1=${v_REPOS_CENTER}/DRYa/all/lib/libs/drya-lib-1-colors-greets.sh
   source $v_lib1 2>/dev/null || (read -s -n 1 -p "DRYa libs: $__name__: drya-lib-1 does not exist (error)" && echo )

   v_greet="Lendario"
   v_talk="cao-lendario: "





if [ -z $1 ]; then
   f_greet
   f_talk; echo "Mes atual"
           echo

   cal

elif [ $1 == "." ]; then
   bash e $__repo__/lendario.sh

elif [ $1 == "r" ] || [ $1 == "random-line-from-ToDo-file" ]; then
   # Busca uma unica linha aleatoria do ficheiro td.org
   # uDev: Filtras so as linhas que tem o texto "- [ ]"

   v_file=${v_REPOS_CENTER}/omni-log/all/ex-pressa/td.org

   f_greet
   f_talk; echo "Linha aleatoria do ficheiro:"
           echo " > $v_file" 



   if [ -f $v_file ]; then

      function f_find_line {
         v_number=$(wc -l $v_file | cut -f 1 -d " ")
         v_number=$(shuf -n 1 -i 0-$v_number)
         v_line=$(head -n $v_number $v_file | tail -n 1)
      }
      
      f_find_line 
      [[ -z $v_line ]] && echo

      while [[ -z $v_line ]]; 
      do
         echo "repeat"
         f_find_line 
      done

              echo
      f_talk; echo "Linha $v_number"
              echo " > $v_line"

   fi

else
   echo "uDev: help"

fi
