#_________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: _RedCoal_
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:scenario/etape/visite
# Documentation:
# Note:

#__________________________________________________
# Code

#faire le tour de l'usine
#execute if entity @e[type=armor_stand,tag=Visite,tag=Compteur,distance=..4] run scoreboard players add Compteur Scenario 1
#execute if entity @e[type=armor_stand,tag=Visite,tag=Compteur,distance=..4] run tellraw @s ["",{"text":"Lieux visité : ","color":"green"},{"score":{"name":"Compteur","objective":"Scenario"},"color":"green"},{"text":"/8","color":"green"}]

#1

execute if entity @e[type=armor_stand,tag=Visite,tag=1,distance=..4] run summon armor_stand 357 5 -188 {Tags:["Objectif","Visite","2"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#2
execute if entity @e[type=armor_stand,tag=Visite,tag=2,distance=..4] run summon armor_stand 381 5 -204 {Tags:["Objectif","Visite","Import","Compteur"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}


#import
execute if entity @e[type=armor_stand,tag=Visite,tag=Import,distance=..4] run tellraw @s [{"text":"\nTous les matériaux brut arrivent par bacs dans des camions. Cette machine les trie pour qu’ils puissent rejoindre leur bonne destination sur la ligne de production. Les bacs vides sont retournés pour le fournisseur.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=Import,distance=..4] run advancement grant @s only mechanism:visite/import
execute if entity @e[type=armor_stand,tag=Visite,tag=Import,distance=..4] run summon armor_stand 365 5 -202 {Tags:["Objectif","Visite","3"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#3
execute if entity @e[type=armor_stand,tag=Visite,tag=3,distance=..4] run summon armor_stand 374 5 -189 {Tags:["Objectif","Visite","4a"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4a
execute if entity @e[type=armor_stand,tag=Visite,tag=4a,distance=..4] run tellraw @s [{"text":"\nCes tapis roulant acheminent les produit semi-fini et fini par le bas, les matériaux par le haut, puis les palettes sur un tapis plus large en bas.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4a,distance=..4] run summon armor_stand 405 5 -183 {Tags:["Objectif","Visite","4b"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4b
execute if entity @e[type=armor_stand,tag=Visite,tag=4b,distance=..4] run tellraw @s [{"text":"\nLa structure métallique est cintrée puis ajustée pour accueillir la pièce de tissu.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4b,distance=..4] run summon armor_stand 397 5 -159 {Tags:["Objectif","Visite","4c"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4c
execute if entity @e[type=armor_stand,tag=Visite,tag=4c,distance=..4] run tellraw @s [{"text":"\nLe tissu et la membrane rigide sont découpés selon la forme voulue en adéquation avec le design de la lampe puis collés sur la structure métallique.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4c,distance=..4] run summon armor_stand 392 5 -158 {Tags:["Objectif","Visite","4d"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4d
execute if entity @e[type=armor_stand,tag=Visite,tag=4d,distance=..4] run tellraw @s [{"text":"\nLe pied est assemblé avec le câble d’alimentation de la lampe.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4d,distance=..4] run summon armor_stand 392 5 -158 {Tags:["Objectif","Visite","4e"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4e
execute if entity @e[type=armor_stand,tag=Visite,tag=4e,distance=..4] run tellraw @s [{"text":"\nLe pied de bois est façonné puis vernis.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4e,distance=..4] run summon armor_stand 386 5 -183 {Tags:["Objectif","Visite","4f"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}


#4f
execute if entity @e[type=armor_stand,tag=Visite,tag=4f,distance=..4] run tellraw @s [{"text":"\nUne fine plaque de métal est modelé pour former le culot.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4f,distance=..4] run summon armor_stand 357 5 -192 {Tags:["Objectif","Visite","4g"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}


#4g
execute if entity @e[type=armor_stand,tag=Visite,tag=4g,distance=..4] run tellraw @s [{"text":"\nUn polymère translucide est moulé en forme de globe.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4g,distance=..4] run summon armor_stand 357 5 -176 {Tags:["Objectif","Visite","4h"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4h
execute if entity @e[type=armor_stand,tag=Visite,tag=4h,distance=..4] run tellraw @s [{"text":"\nUn circuit électronique est raccordé à une LED pour former le circuit de l’ampoule.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4h,distance=..4] run summon armor_stand 357 5 -160 {Tags:["Objectif","Visite","4i"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}


#4i
execute if entity @e[type=armor_stand,tag=Visite,tag=4i,distance=..4] run tellraw @s [{"text":"\nLe culot, le globe et le circuit LED sont combinés pour former l’ampoule LED. Cette dernière est directement testée.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4i,distance=..4] run summon armor_stand 364 5 -143 {Tags:["Objectif","Visite","4j"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4j
execute if entity @e[type=armor_stand,tag=Visite,tag=4j,distance=..4] run tellraw @s [{"text":"\nC’est ici que les produits semi-fini des trois chaînes précédentes se rejoignent pour être assemblé.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4j,distance=..4] run summon armor_stand 405 5 -136 {Tags:["Objectif","Visite","4k"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4k
execute if entity @e[type=armor_stand,tag=Visite,tag=4k,distance=..4] run tellraw @s [{"text":"\nLes lampes sont testées une par une pour vérifier leur fonctionnement.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4k,distance=..4] run summon armor_stand 426 5 -137 {Tags:["Objectif","Visite","4l"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4l
execute if entity @e[type=armor_stand,tag=Visite,tag=4l,distance=..4] run tellraw @s [{"text":"\nLes lampes sont conditionnées dans des cartons puis disposées sur les palettes en fonction des commandes des clients.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4l,distance=..4] run summon armor_stand 432 5 -176 {Tags:["Objectif","Visite","4m"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4m
execute if entity @e[type=armor_stand,tag=Visite,tag=4m,distance=..4] run tellraw @s [{"text":"\nLes palettes sont emballées et étiquetées à l’adresse de destination.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4m,distance=..4] run summon armor_stand 429 5 -190 {Tags:["Objectif","Visite","4n"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#4n
execute if entity @e[type=armor_stand,tag=Visite,tag=4n,distance=..4] run tellraw @s [{"text":"\nLa zone de tri classe les palettes prêtes à l’expédition selon leur destination.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=4n,distance=..4] run summon armor_stand 434 5 -209 {Tags:["Objectif","Visite","Export","Compteur"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}


#Export
execute if entity @e[type=armor_stand,tag=Visite,tag=Export,distance=..4] run tellraw @s [{"text":"\nLa zone d’export charge les camions des palettes emballées. C’est ici que se termine la ligne de production.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=Export,distance=..4] run advancement grant @s only mechanism:visite/export
execute if entity @e[type=armor_stand,tag=Visite,tag=Export,distance=..4] run summon armor_stand 450 5 -183 {Tags:["Objectif","Visite","14"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#14
execute if entity @e[type=armor_stand,tag=Visite,tag=14,distance=..4] run summon armor_stand 434.00 10.5 -176 {Tags:["Objectif","Visite","15"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}



#15
execute if entity @e[type=armor_stand,tag=Visite,tag=15,distance=..4] run summon armor_stand 405 12 -170 {Tags:["Objectif","Visite","Controle","Compteur"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#centre de controle visité
execute if entity @e[type=armor_stand,tag=Visite,tag=Controle,distance=..4] run tellraw @s [{"text":"\nLa salle de contrôle à une vue panoramique sur toute la production. Elle permet de gérer et contrôler la production de chaque machine séparément, d’observer par le biais de caméras tous les recoins de l’usine. La salle de contrôle est, en quelque sorte, le centre névralgique de l’usine, le lieu où toute la production peut être contrôlée.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=Controle,distance=..4] run advancement grant @s only mechanism:visite/controle
execute if entity @e[type=armor_stand,tag=Visite,tag=Controle,distance=..4] run summon armor_stand 392 10 -174 {Tags:["Objectif","Visite","16"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#16
execute if entity @e[type=armor_stand,tag=Visite,tag=16,distance=..4] run summon armor_stand 389 5 -182 {Tags:["Objectif","Visite","17"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#17
execute if entity @e[type=armor_stand,tag=Visite,tag=17,distance=..4] run summon armor_stand 373 5 -195 {Tags:["Objectif","Visite","18"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#18
execute if entity @e[type=armor_stand,tag=Visite,tag=18,distance=..4] run summon armor_stand 358 5 -187 {Tags:["Objectif","Visite","19"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#19
execute if entity @e[type=armor_stand,tag=Visite,tag=19,distance=..4] run summon armor_stand 358 5 -150 {Tags:["Objectif","Visite","20"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#19
execute if entity @e[type=armor_stand,tag=Visite,tag=20,distance=..4] run summon armor_stand 345 5 -144 {Tags:["Objectif","Visite","Disjoncteur","Compteur"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#Disjoncteur
execute if entity @e[type=armor_stand,tag=Visite,tag=Disjoncteur,distance=..4] run tellraw @s [{"text":"\nUne usine demande une quantité d'énergie énorme. Pour cela, elle possède une central électrique où se situe le disjoncteur principal. Ce disjoncteur permet de couper le courant en cas de problème électrique sur l’ensemble de l’usine. Celui-ci est primordial pour sauvegarder les différentes machines qui composent la ligne de production.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=Disjoncteur,distance=..4] run advancement grant @s only mechanism:visite/disjoncteur
execute if entity @e[type=armor_stand,tag=Visite,tag=Disjoncteur,distance=..4] run summon armor_stand 361 9 -138 {Tags:["Objectif","Visite","21"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#21
execute if entity @e[type=armor_stand,tag=Visite,tag=21,distance=..4] run summon armor_stand 340 12 -137.00 {Tags:["Objectif","Visite","22"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#22
execute if entity @e[type=armor_stand,tag=Visite,tag=22,distance=..4] run summon armor_stand 330 12 -148 {Tags:["Objectif","Visite","Info","Compteur"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#Info
execute if entity @e[type=armor_stand,tag=Visite,tag=Info,distance=..4] run advancement grant @s only mechanism:visite/info
execute if entity @e[type=armor_stand,tag=Visite,tag=Info,distance=..4] run tellraw @s [{"text":"\nEn plus de la salle de contrôle, cette pièce est très importante puisqu’elle contient les serveurs où sont répertoriés les carnets d’adresses et la configuration informatique de l’usine.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=Info,distance=..4] run summon armor_stand 328 12 -176 {Tags:["Objectif","Visite","Qualite","Compteur"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#Controle qualitey
execute if entity @e[type=armor_stand,tag=Visite,tag=Qualite,distance=..4] run tellraw @s [{"text":"\nIci, les données des machines de test sont récoltées et certaines lampes sont contrôlées manuellement la qualité (cotes, puissance, etc) doit correspondre à un cahier des charges et les machines réglées les machines en cas de mesures non conformes.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Visite,tag=Qualite,distance=..4] run advancement grant @s only mechanism:visite/qualite
execute if entity @e[type=armor_stand,tag=Visite,tag=Qualite,distance=..4] run summon armor_stand 325 12 -165 {Tags:["Objectif","Visite","23"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#23
execute if entity @e[type=armor_stand,tag=Visite,tag=23,distance=..4] run summon armor_stand 325 5 -176 {Tags:["Objectif","Visite","24"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

#24
execute if entity @e[type=armor_stand,tag=Visite,tag=24,distance=..4] run summon armor_stand 329 5 -158 {Tags:["Objectif","Visite","Cafet","Compteur"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}



#cafet visité
execute if entity @e[type=armor_stand,tag=Visite,tag=Cafet,distance=..4] run advancement grant @s only mechanism:visite/cafet
execute if entity @e[type=armor_stand,tag=Visite,tag=Cafet,distance=..4] run summon armor_stand 348 5 -157 {Tags:["Objectif","Visite","End"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}




execute if entity @e[type=armor_stand,tag=Visite,tag=End,distance=..4] run scoreboard players add Partie Scenario 1
execute if entity @e[type=armor_stand,tag=Visite,tag=End,distance=..4] run scoreboard players set @s Scenario 0


kill @e[type=armor_stand,tag=Visite,distance=..4] 


