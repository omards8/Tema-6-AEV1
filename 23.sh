#!/bin/bash

read -p "Introduce el dia: " dia_aux
read -p "Introduce el mes: " mes_aux

totLin=`cat usuarios.txt | wc -l`
con=1

while [ $con -lt $totLin ]; do
	res=`cat usuarios.txt | head -$con | tail -1`
	usu=`echo $res | awk '{print $1}'`
	dia=`echo $res | awk '{print $2}'`
	mes=`echo $res | awk '{print $3}'`
	if [ $mes = $mes_aux ] && [ $dia = $dia_aux ]; then
		echo $usu
	fi
	con=$(($con + 1))
done
