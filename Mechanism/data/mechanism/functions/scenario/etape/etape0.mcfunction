execute if entity @e[type=armor_stand,tag=Etape0,tag=1,distance=..4] run summon armor_stand 340 5 -191 {Tags:["Objectif","Etape0","2"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}

execute if entity @e[type=armor_stand,tag=Etape0,tag=2,distance=..4] run tellraw @s [{"text":"<","color":"green"},{"selector":"@s","color":"green"},{"text":"> ","color":"green"},{"text":"Tiens, Greg n’est pas aux vestiaires, je vais aller voir s’il ne se trouve pas vers le patio.","color":"green"}]
execute if entity @e[type=armor_stand,tag=Etape0,tag=2,distance=..4] run summon armor_stand 348 5 -157 {Tags:["Objectif","Etape0","End"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}


execute if entity @e[type=armor_stand,tag=Etape0,tag=End,distance=..4] run scoreboard players add Partie Scenario 1
execute if entity @e[type=armor_stand,tag=Etape0,tag=End,distance=..4] run scoreboard players set @s Scenario 0


kill @e[type=armor_stand,tag=Etape0,distance=..4] 


