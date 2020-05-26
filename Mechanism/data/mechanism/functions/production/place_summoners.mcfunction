#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:production/place_summoners
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

# Voir la fin du fichier

#__________________________________________________
# CODE

kill @e[type=armor_stand,tag=FactorySummoner]

#Entrée des ressources
summon armor_stand 381 12 -191 {Small:1,Invisible:1,Tags:["FactorySummoner","Ressources"]}
summon armor_stand 391 5 -201 {Small:1,Invisible:1,Tags:["FactorySummoner","Pallet"]}

#Ampoule
summon armor_stand 366 6 -191 {Small:1,Invisible:1,Tags:["FactorySummoner","Bulb-Base"]}
summon armor_stand 366 6 -175 {Small:1,Invisible:1,Tags:["FactorySummoner","Bulb-Body"]}
summon armor_stand 366 6 -159 {Small:1,Invisible:1,Tags:["FactorySummoner","Bulb-Head"]}

summon armor_stand 377 6 -144 {Small:1,Invisible:1,Tags:["FactorySummoner","Bulb-Test"]}

#Lampe
summon armor_stand 385 6 -174 {Small:1,Invisible:1,Tags:["FactorySummoner","Lamp-Planks"]}
summon armor_stand 385 6 -158 {Small:1,Invisible:1,Tags:["FactorySummoner","Lamp-Body"]}

#Abat jour
summon armor_stand 405 6 -174 {Small:1,Invisible:1,Tags:["FactorySummoner","Lampshade-Ring"]}
summon armor_stand 405 6 -158 {Small:1,Invisible:1,Tags:["FactorySummoner","Lampshade-Assembly"]}

#Lampe finale
summon armor_stand 406 6 -144 {Small:1,Invisible:1,Tags:["FactorySummoner","Final-Assembly"]}

summon armor_stand 425 6 -145 {Small:1,Invisible:1,Tags:["FactorySummoner","Final-Test"]}
summon armor_stand 425 5 -161 {Small:1,Invisible:1,Tags:["FactorySummoner","Final-Pallet"]}
summon armor_stand 425 5 -176 {Small:1,Invisible:1,Tags:["FactorySummoner","Final-Plastic"]}

#__________________________________________________
# CONFIG

# Intérvale de production en tick (20 = 1 seconde). Défaut: 400 (20 secondes)
scoreboard players set @e[tag=FactorySummoner] ProdFrequency 400
# Temps de production (20 = 1 seconde). Défaut: 100 (5 secondes)
scoreboard players set @e[tag=FactorySummoner] ProdTime 100
