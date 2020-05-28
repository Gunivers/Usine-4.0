#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/set_y
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

scoreboard objectives add Var1 dummy

#__________________________________________________
# CODE

summon armor_stand ~ ~200 ~ {Invisible:1,NoGravity:1,Tags:["Glib","SetLocation"]}

tp @e[type=armor_stand,tag=SetLocation,limit=1] @s

execute store result entity @e[type=armor_stand,tag=SetLocation,limit=1] Pos[1] double 1 run scoreboard players get @s Var1
tp @s @e[type=armor_stand,tag=SetLocation,limit=1]
kill @e[type=armor_stand,tag=SetLocation,limit=1]
