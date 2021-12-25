#1.0

#!/bin/bash
for vezes in {1..4}; do
   for min in {1..25}; do
      sleep 60

      if [ $min -eq "1" ]; then
         clear
         echo "se passaram 1 minuto"

      else
         clear
         echo "se passaram $min minutos"

      fi
   done

   if [ $vezes -lt 4 ]; then
      notify-send "pausa" "descance por 5 minutos, respire bem, tome uma agua"
      sleep 310 # 10 segundos extras para se adequar
   else
      notify-send "parabens!" "vc completou 4 vezes, descanse por 30 minutos... volte a me usar quando voltar as tarefas"
   fi

done
