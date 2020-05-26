#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:camera/in_cam
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if entity @s[scores={Camera=1}] positioned 445 16 -199 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=2}] positioned 425 16 -199 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=3}] positioned 425 16 -167 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=4}] positioned 405 16 -167 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=5}] positioned 404 9 -181 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=6}] positioned 385 16 -183 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=7}] positioned 365 16 -167 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=8}] positioned 355 16 -142 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=9}] positioned 353 10 -152 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=10}] positioned 333 9 -151 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=11}] positioned 335 16 -191 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={Camera=12}] positioned 322 16 -160 run tp @s ~ ~ ~ ~ ~


effect give @s invisibility 1 1 true
#replaceitem entity @a[scores={Camera=1..}] armor.head minecraft:carved_pumpkin
title @s actionbar [{"text":"Look up to exit camera","color":"green"}]

tag @s[x_rotation=-91..-89,scores={Camera=1..}] add Exit_Cam
tp @s[tag=Exit_Cam] 398 12 -175 -90 -16
scoreboard players set @s[tag=Exit_Cam] Camera 0
execute if entity @s[tag=Exit_Cam,tag=!NoCourant] run function mechanism:mechanism/lights
replaceitem entity @s[tag=Exit_Cam] armor.head minecraft:air
effect clear @s[tag=Exit_Cam] invisibility
title @s[tag=Exit_Cam] actionbar [{"text":" ","color":"green"}]
tag @s remove Exit_Cam
