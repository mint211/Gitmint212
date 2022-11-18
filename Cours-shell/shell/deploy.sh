#!/bin/bash

########################################################
#
# Description : lancement d'une plateforme de conteneurs
#
# Auteur : Xavier
#
# Date : 31/12/2019
#
########################################################

# si option --create 
if [ "$1" == "--create" ];then
 echo " notre option est $0 --create"
 # definition du nombre de conteneur
 nb_machine=1
 [ "$2" != "" ] && nb_machine=$2

 # Setting min/max
 min=1
 max=0
 
 # Récupération de l'id max
idmax=`docker ps -a --format '{{ .Names}}' | awk -F "-" -v user=$USER '$0 ~ user"-alpine" {print $3}' | sort -r | head -1`

# redéfinission de min et max
min=$(($idmax +1))
max=$(($idmax + $nb_machine))

 # creation des conteneurs
 echo "Début de la création du/des conteneur..."
 for i in $(seq $min $max);do
	docker run -tid --name $USER-alpine-$i alpine:latest
	echo "Conteneur $USER-alpine-$i cree"
 done


# si option --drop
elif [ "$1" == "--drop" ];then
	
 echo " notre option est $0 --drop"
 # drop des conteneurs
 echo "Suppression des conteneurs..."
 docker rm -f $(docker ps -a | grep $USER-alpine | awk '{print $1}')
 echo "Fin de la suppression"



# si option --start
elif [ "$1" == "--start" ];then
	
 echo "" 
 echo " notre option est $0 --start"
 echo ""

# si option --info
elif [ "$1" == "--info" ];then
	
 echo "" 
 echo " notre option est $0 --info"
 echo ""

# si option --ansible
elif [ "$1" == "--ansible" ];then
	
 echo "" 
 echo " notre option est $0 --ansible"
 echo ""
else
#  si aucune option affichage de l'aide

echo "

Options :

	--create : si aucun chiffre 2 conteneurs sinon x conteneurs seront créés

	--drop : pour supprimer les conteneurs créés via ce script par ${USER}

	--start : pour redémarrer les conteneurs

	--infos : pour récapituler les infos des conteneurs (user, ip, nom...)

	--ansible : pour créer une base de dev pour ansible

"
fi
