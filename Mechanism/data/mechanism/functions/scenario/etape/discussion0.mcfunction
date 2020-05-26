#_________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof & _RedCoal_
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:scenario/etape/discussion0
# Documentation:
# Note:

#__________________________________________________
# Code

scoreboard players add @s Scenario 1

# Discussion d'entrée


execute if score @s Scenario matches ..140 run tp @s 348 5 -157 180 0

execute if score @s Scenario matches 10 run tellraw @s [{"text":"\n<","color":"gray"},{"selector":"@s","color":"gray"},{"text":"> ","color":"gray"},{"text":"Salut Greg, comment tu vas ?","color":"green"}]
execute if score @s Scenario matches 40 run tellraw @s [{"text":"<Greg> ","color":"gray"},{"text":"Salut, ça va bien, la soirée a été très calme, comme cette après midi d’ailleurs. Et toi ça va ?","color":"green"}]
execute if score @s Scenario matches 80 run tellraw @s [{"text":"<","color":"gray"},{"selector":"@s","color":"gray"},{"text":"> ","color":"gray"},{"text":"Un peu fatigué.e … J'étais en soirée hier, mais bon ça devrait aller.","color":"green"}]
execute if score @s Scenario matches 120 run tellraw @s [{"text":"<Greg> ","color":"gray"},{"text":"Si c’est comme cette après-midi, il ne devrait y avoir aucun problème. Je te laisse aller faire ton tour, je t’attends ici...","color":"green"}]
execute if score @s Scenario matches 160 run tellraw @s [{"text":"<","color":"gray"},{"selector":"@s","color":"gray"},{"text":"> ","color":"gray"},{"text":"Ca marche.","color":"green"}]

tellraw @a[scores={Scenario=200}] [{"text":"\n-> Faites le tour de l'usine","color":"gold"}]

execute if score @s Scenario matches 200 run summon armor_stand 340 5 -176 {Tags:["Objectif","Visite","1"],Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"snowball",Count:1b}],Glowing:1b}




execute if score @s Scenario matches 200 run scoreboard players add Partie Scenario 1
execute if score @s Scenario matches 200 run scoreboard players set @s Scenario 0
