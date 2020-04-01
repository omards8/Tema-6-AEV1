read -p "Introduce un nombre de usuario: " usu

con=0
lin=1

while [ $lin -le 9 ]; do
	res=`cat usuarios.txt | awk '{print $1}' | head -n $lin | tail -1`
	if [ $usu = $res ]; then
		con=$(( $con + 1 ))
	fi
	lin=$(( $lin + 1 ))
done
if [ $con -eq 0 ]; then
	echo "No se ha logueado"
else
	echo "Se ha logueado" $con "veces"
fi
