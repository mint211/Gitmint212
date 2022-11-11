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
 echo "" 
 echo " notre option est $0 --create"
 echo ""
# si option --drop
elif [ "$1" == "--drop" ];then
	
 echo "" 
 echo " notre option est $0 --drop"
 echo ""

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
