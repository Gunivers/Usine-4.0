#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:mechanism/lights
# Documentation:
# Note:

#__________________________________________________
# INIT

scoreboard objectives add Time dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @a Time run time query daytime
execute as @a[scores={Time=13000..23000}] run tag @s add Night
fill 455 16 -217 315 16 -133 redstone_lamp replace sea_lantern
fill 455 9 -217 315 9 -133 redstone_lamp replace sea_lantern

scoreboard players add @a LocX 315
scoreboard players remove @a LocZ 199

execute if entity @a[tag=Night] run summon area_effect_cloud ~ 1 ~ {Tags:["Light"],Small:1,Invisible:1}

execute as @e[type=area_effect_cloud,tag=Light] run function gunivers-lib:entity/location/get

scoreboard players remove @e[type=area_effect_cloud,tag=Light] LocX 315
scoreboard players add @e[type=area_effect_cloud,tag=Light] LocZ 199

scoreboard players operation @e[type=area_effect_cloud,tag=Light] LocX /= 20 Constant
scoreboard players operation @e[type=area_effect_cloud,tag=Light] LocZ /= 16 Constant
scoreboard players operation @e[type=area_effect_cloud,tag=Light] LocX *= 20 Constant
scoreboard players operation @e[type=area_effect_cloud,tag=Light] LocZ *= 16 Constant

execute as @e[type=area_effect_cloud,tag=Light] run scoreboard players operation @s Var1 = @s LocX
execute as @e[type=area_effect_cloud,tag=Light] run scoreboard players operation @s Var2 = 5 Constant
execute as @e[type=area_effect_cloud,tag=Light] run scoreboard players operation @s Var3 = @s LocZ

scoreboard players add @e[type=area_effect_cloud,tag=Light] Var1 315
scoreboard players remove @e[type=area_effect_cloud,tag=Light] Var3 199

execute as @e[type=area_effect_cloud,tag=Light] run function gunivers-lib:entity/location/set

execute as @e[type=area_effect_cloud,tag=Light] at @s run fill ~-20 16 ~-16 ~40 16 ~32 sea_lantern replace redstone_lamp
execute as @e[type=area_effect_cloud,tag=Light] at @s run fill ~-20 9 ~-16 ~40 9 ~32 sea_lantern replace redstone_lamp

kill @e[type=area_effect_cloud,tag=Light]
tag @a remove Night
