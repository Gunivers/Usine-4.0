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
tellraw @s [{"text":"-> Aller voir à la cafétariat ce qu'il s'y passe \n note: Uilisez le flash de votre téléphone pour vous reperez.","color":"gold"}]
summon armor_stand 320 5 -136 {Tags:["Objectif","2"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}
scoreboard players add Partie Scenario 1
tag @s add NoCourant
fill 455 16 -217 315 16 -133 redstone_lamp replace sea_lantern
fill 455 9 -217 315 9 -133 redstone_lamp replace sea_lantern