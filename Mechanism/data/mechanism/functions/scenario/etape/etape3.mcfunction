#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof & _RedCoal_
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:scenario/etape/etape1
# Documentation:
# Note:

#__________________________________________________
# CODE



kill @e[tag=Objectif]
tellraw @s [{"text":"-> Courant rétablis ","color":"gold"}]
summon armor_stand 327 5 -187 {Tags:["Objectif","4"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}
scoreboard players add Partie Scenario 1
tag @s remove NoCourant