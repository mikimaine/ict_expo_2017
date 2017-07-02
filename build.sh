#!/bin/bash
echo "Welcome to  "
echo "Processing Crop data"
echo " loading . " 
a=0
 echo "Colecting raw image data"
while [ $a -lt 10 ]
do
   echo " . "
   sleep 1s

   if [ $a -eq 5 ]
   then
      echo "analayzing & proccessing ."
      sleep 2s
      echo "."
      sleep 2s
      break
   fi
   a=`expr $a + 1`
done
echo "running the Nodejs and PHP server "
gnome-terminal --tab -e 'bash -c "cd api && yarn start; exec bash"'




echo "100%" 
echo "I am done running farm analysis"  

gnome-terminal --tab -e 'bash -c "python plot_boundary_merge.py; exec bash"'
gnome-terminal --tab -e 'bash -c "python plot_equalize.py; exec bash"'
# xterm -title "Falcon Terminal " -e "; " 
echo "bye."