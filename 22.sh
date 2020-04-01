#!/bin/bash
read -p "Introduce un mes: " mes_aux
con=0
lin=1
totLin=`cat usuarios.txt | wc -l`
while [ $lin -le $totLin ]; do
	res=`cat usuarios.txt | head -$lin | tail -1`
	mes=`echo $res | awk '{print $3}'`
	dia=`echo $res | awk '{print $2}'`
	usu=`echo $res | awk '{print $1}'`
	if [ $mes_aux = $mes ];then
		echo $dia
		con=$(($con+1))
	fi
	lin=$(($lin+1))
done
if [ $con -eq 0 ];then
	echo "0"
fi
