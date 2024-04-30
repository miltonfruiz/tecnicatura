echo "ingrese su nombre"
read nombre
echo "Hola $nombre"
echo "ingrese su edad"
read edad

if [[ $edad -gt 0]]
then
        if [[ $edad -ge 18 ]]
        then
                echo "es mayor"
        else
                echo "Es menor"
        fi
else
        echo "edad invalida"
fi