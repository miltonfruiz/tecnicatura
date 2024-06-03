contador=0

termina=10



until [ $termina -le $contador ]

do

	echo "vamos:  $contador"

	let contador=$contador+1

done