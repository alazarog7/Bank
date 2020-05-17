#!/bin/bash
#Verifica que un nombre se encuentre en una lista de los archivos nombres
#Si el nombre es desconocido lo agrega a un archivo nombres_desconocidos
# Requerimientos
#   chmod +x ./*.sh
# Ejemplo
#   ./script.sh alejandro

x=$(echo $(grep  $1 ./* || echo "vacio") \
  |  cut -d ':' -f 1 \
  | sed 's/.\///g; s/.sh//g')

case $x in
  nombres_hispanos)
    echo "Es un nombre hispano";;
  nombres_ingleses)
    echo "Es nombre ingles";;
  nombres_asiaticos)
    echo "Es un nombre asiatico";;
  vacio)
    echo $1 >> nombres_desconocidos;\
    echo "Se guardo en el fichero nombres_desconocidos";;
esac
