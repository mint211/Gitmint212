#!/bin/bash

###############################################################
#  TITRE: 
#
#  DESCRIPTION: nombre de hits par jour par ip
###############################################################

cat logfile.log | awk '{match($4,/\[(.*):/) gsub(":.*|\[","",$4) tab[$4" - "$1]++} END {for (datehost in tab) print datehost" - hits: "tab[datehost]}'
