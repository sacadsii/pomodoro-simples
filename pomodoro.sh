#1.1
#!/bin/bash

clear
echo "contagem iniciada, bons estudos..."

if [ $# == 0 ]; then
   tempoSlap=25
else
   tempoSlap=$@
fi


funcaoSlap()
{
for min in $(seq 1 $tempoSlap); do
   sleep 60
   if [ $min -eq 1 ]; then
      clear
      echo "se passaram 1 minuto..."

   else
      clear
      echo "se passaram $min minutos..."
   fi
done
}


for vezes in {1..4}; do
   funcaoSlap
   if [ $vezes -lt 4 ]; then
      notify-send "pausa" "descance por 5 minutos, respire bem, tome uma agua"
      sleep 310 # 10 segundos extras para se adequar
      notify-send "acabou" "fim dos 5 minutos de descanso"
   else
      notify-send "parabens!" "vc completou 4 vezes, descanse por 30 minutos... volte a me usar quando voltar as tarefas"
   fi
done
