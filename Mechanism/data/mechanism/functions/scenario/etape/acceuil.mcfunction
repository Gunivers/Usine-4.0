#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof & _RedCoal_
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:scenario/etape/accueil
# Documentation:
# Note:

#__________________________________________________
# INIT

scoreboard players add @s Scenario 1

# Ecran d'accueil
execute if score @s Scenario matches 1 run time set day
execute if score @s Scenario matches 1 run advancement revoke @s everything

execute if score @s Scenario matches 1 run kill @e[tag=NPC,type=!player]
execute if score @s Scenario matches 1 run kill @e[tag=Objectif,type=!player]
execute if score @s Scenario matches 1 run effect give @s blindness 1 1 true
execute if score @s Scenario matches 1 run effect give @s invisibility 5 1 true

execute if score @s Scenario matches 1 run title @s times 10 90 10
execute if score @s Scenario matches 1 run title @s title {"text":"Usine 4.0","color":"green"}

execute if score @s Scenario matches ..100 run tp @s 365 13 -214 -72.8 8.6
execute if score @s Scenario matches 100.. run summon armor_stand 348 5 -159 {Tags:["NPC","NPC_Gardien"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Marker:1b,Rotation:[360f],ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"Leirof"}}],HandItems:[{},{}],Pose:{Head:[4f,10f,4f],LeftLeg:[272f,352f,0f],RightLeg:[274f,8f,0f],LeftArm:[288f,2f,0f],RightArm:[290f,348f,0f]}}
execute if score @s Scenario matches 100.. run replaceitem entity @s hotbar.8 book{CustomName:'{"text":"Galaxy Fold 2","italic":"false","color":"blue"}'}
execute if score @s Scenario matches 100.. run tp @s 324 5.00 -247 0 0
execute if score @s Scenario matches 100.. run summon armor_stand 326 5 -211 {Tags:["Objectif","Etape0","1"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}
execute if score @s Scenario matches 100.. run scoreboard players add Partie Scenario 1
execute if score @s Scenario matches 100.. run scoreboard players set @s Scenario 0


