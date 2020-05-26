#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof & _RedCoal_
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:scenario/main
# Documentation:
# Note:

#__________________________________________________
# INIT

scoreboard objectives add Scenario dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Général
execute as @e[tag=Objectif] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~



# Ecran d'accueil
execute unless score Partie Scenario matches 1.. run function mechanism:scenario/etape/acceuil

# Entré
execute if score Partie Scenario matches 1 run function mechanism:scenario/etape/etape0


# Discussion d'entrée
execute if score Partie Scenario matches 2 run function mechanism:scenario/etape/discussion0

#visite
execute if score Partie Scenario matches 3 run function mechanism:scenario/etape/visite


#discussion d'après visite
execute if score Partie Scenario matches 4 run function mechanism:scenario/etape/discussion1

#Re salle de contrôle
execute if score Partie Scenario matches 5 if entity @e[tag=Objectif,tag=1,distance=..5] run function mechanism:scenario/etape/etape1

#Re cafet
execute if score Partie Scenario matches 6 if entity @e[tag=Objectif,tag=2,distance=..5] run function mechanism:scenario/etape/etape2

#Disjoncteur
execute if score Partie Scenario matches 7 if entity @e[tag=Objectif,tag=3,distance=..5] run function mechanism:scenario/etape/etape3
