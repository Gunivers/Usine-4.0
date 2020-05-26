#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof & _RedCoal_
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:scenario/etape/discussion1
# Documentation:
# Note:

#__________________________________________________
# Code

scoreboard players add @s Scenario 1

# Discussion d'entrée
execute if score @s Scenario matches 1 run time set 16000


execute if score @s Scenario matches ..140 run tp @s 348 5 -157 180 0

execute if score @s Scenario matches 10 run tellraw @s [{"text":"\n<Greg> ","color":"gray"},{"text":"C’est bon tu as fini ton tour?","color":"green"}]
execute if score @s Scenario matches 40 run tellraw @s [{"text":"<","color":"gray"},{"selector":"@s","color":"gray"},{"text":"> ","color":"gray"},{"text":"Tout est nickel, tu vas pouvoir rentrer chez toi, je te souhaite une bonne nuit.","color":"green"}]
execute if score @s Scenario matches 100 run tellraw @s [{"text":"<Greg> ","color":"gray"},{"text":"N’oublie pas de retourner à la salle de contrôle et de regarder attentivement les caméras, bonne nuit à, demain !","color":"green"}]

# Aller à la cafétariat
execute if score @s Scenario matches 140 run tellraw @s [{"text":"\n-> Retourner à la salle de contrôle","color":"gold"}]
execute if score @s Scenario matches 140 run summon armor_stand 397 12 -172 {Tags:["Objectif","1"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}


execute if score @s Scenario matches 300.. run kill @e[tag=NPC_Gardien,type=!player]
execute if score @s Scenario matches 300.. run scoreboard players add Partie Scenario 1
execute if score @s Scenario matches 300.. run scoreboard players set @s Scenario 0