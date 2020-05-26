#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: theogiraudet & Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:conveyors/get_rail_orientation
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @s remove NoGravity
execute if block ~ ~ ~ #mechanism:rails[shape=ascending_south] run tag @s add NoGravity
execute if block ~ ~ ~ #mechanism:rails[shape=ascending_north] run tag @s add NoGravity
execute if block ~ ~ ~ #mechanism:rails[shape=ascending_east] run tag @s add NoGravity
execute if block ~ ~ ~ #mechanism:rails[shape=ascending_west] run tag @s add NoGravity

tag @s remove Move
execute if block ~ ~ ~ minecraft:powered_rail[powered=true] run tag @s add Move
execute if block ~ ~ ~ minecraft:activator_rail[powered=true] run tag @s add Move
execute if block ~ ~-1 ~ minecraft:lime_glazed_terracotta run tag @s add Move
execute if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta run tag @s add Move

execute if block ~ ~-0.1 ~ minecraft:powered_rail[shape=north_south,powered=true] run tag @s remove Move
execute if block ~ ~-0.1 ~ minecraft:powered_rail[shape=east_west,powered=true] run tag @s remove Move
execute if block ~ ~-0.1 ~ minecraft:activator_rail[shape=north_south,powered=true] run tag @s remove Move
execute if block ~ ~-0.1 ~ minecraft:activator_rail[shape=east_west,powered=true] run tag @s remove Move


# East
execute if block ~ ~ ~ minecraft:powered_rail[shape=east_west,powered=true] run data modify entity @s Rotation[0] set value -90f
execute if block ~ ~ ~ minecraft:powered_rail[shape=east_west,powered=true] run data modify entity @s Rotation[1] set value 0nf
execute if block ~ ~ ~ minecraft:powered_rail[shape=ascending_west,powered=true] run data modify entity @s Rotation[0] set value -90f
execute if block ~ ~ ~ minecraft:powered_rail[shape=ascending_west,powered=true] run data modify entity @s Rotation[1] set value 46f
execute if block ~ ~ ~ minecraft:powered_rail[shape=ascending_east,powered=true] run data modify entity @s Rotation[0] set value -90f
execute if block ~ ~ ~ minecraft:powered_rail[shape=ascending_east,powered=true] run data modify entity @s Rotation[1] set value -46f

# South
execute if block ~ ~ ~ minecraft:powered_rail[shape=north_south,powered=true] run data modify entity @s Rotation[0] set value 180f
execute if block ~ ~ ~ minecraft:powered_rail[shape=north_south,powered=true] run data modify entity @s Rotation[1] set value 0f
execute if block ~ ~ ~ minecraft:powered_rail[shape=ascending_north,powered=true] run data modify entity @s Rotation[0] set value 180f
execute if block ~ ~ ~ minecraft:powered_rail[shape=ascending_north,powered=true] run data modify entity @s Rotation[1] set value 46f
execute if block ~ ~ ~ minecraft:powered_rail[shape=ascending_south,powered=true] run data modify entity @s Rotation[0] set value 180f
execute if block ~ ~ ~ minecraft:powered_rail[shape=ascending_south,powered=true] run data modify entity @s Rotation[1] set value -46f

# West
execute if block ~ ~ ~ minecraft:activator_rail[shape=north_south,powered=true] run data modify entity @s Rotation[0] set value 0f
execute if block ~ ~ ~ minecraft:activator_rail[shape=north_south,powered=true] run data modify entity @s Rotation[1] set value 0f
execute if block ~ ~ ~ minecraft:activator_rail[shape=ascending_south,powered=true] run data modify entity @s Rotation[0] set value 0f
execute if block ~ ~ ~ minecraft:activator_rail[shape=ascending_south,powered=true] run data modify entity @s Rotation[1] set value -46f
execute if block ~ ~ ~ minecraft:activator_rail[shape=ascending_north,powered=true] run data modify entity @s Rotation[0] set value 0f
execute if block ~ ~ ~ minecraft:activator_rail[shape=ascending_north,powered=true] run data modify entity @s Rotation[1] set value 46f

# NordVPN
execute if block ~ ~ ~ minecraft:activator_rail[shape=east_west,powered=true] run data modify entity @s Rotation[0] set value 90f
execute if block ~ ~ ~ minecraft:activator_rail[shape=east_west,powered=true] run data modify entity @s Rotation[1] set value 0f
execute if block ~ ~ ~ minecraft:activator_rail[shape=ascending_east,powered=true] run data modify entity @s Rotation[0] set value 90f
execute if block ~ ~ ~ minecraft:activator_rail[shape=ascending_east,powered=true] run data modify entity @s Rotation[1] set value 46f
execute if block ~ ~ ~ minecraft:activator_rail[shape=ascending_west,powered=true] run data modify entity @s Rotation[0] set value 90f
execute if block ~ ~ ~ minecraft:activator_rail[shape=ascending_west,powered=true] run data modify entity @s Rotation[1] set value -46f

# Angles
execute if block ~ ~-1 ~ minecraft:lime_glazed_terracotta[facing=north] run data modify entity @s Rotation[0] set value 135f
execute if block ~ ~-1 ~ minecraft:lime_glazed_terracotta[facing=north] run data modify entity @s Rotation[1] set value 0f
execute if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta[facing=west] run data modify entity @s Rotation[0] set value 135f
execute if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta[facing=west] run data modify entity @s Rotation[1] set value 0f

execute if block ~ ~-1 ~ minecraft:lime_glazed_terracotta[facing=west] run data modify entity @s Rotation[0] set value 46f
execute if block ~ ~-1 ~ minecraft:lime_glazed_terracotta[facing=west] run data modify entity @s Rotation[1] set value 0f
execute if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta[facing=south] run data modify entity @s Rotation[0] set value 46f
execute if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta[facing=south] run data modify entity @s Rotation[1] set value 0f

execute if block ~ ~-1 ~ minecraft:lime_glazed_terracotta[facing=south] run data modify entity @s Rotation[0] set value -46f
execute if block ~ ~-1 ~ minecraft:lime_glazed_terracotta[facing=south] run data modify entity @s Rotation[1] set value 0f
execute if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta[facing=east] run data modify entity @s Rotation[0] set value -46f
execute if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta[facing=east] run data modify entity @s Rotation[1] set value 0f

execute if block ~ ~-1 ~ minecraft:lime_glazed_terracotta[facing=east] run data modify entity @s Rotation[0] set value -135f
execute if block ~ ~-1 ~ minecraft:lime_glazed_terracotta[facing=east] run data modify entity @s Rotation[1] set value 0f
execute if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta[facing=north] run data modify entity @s Rotation[0] set value -135f
execute if block ~ ~-1 ~ minecraft:light_blue_glazed_terracotta[facing=north] run data modify entity @s Rotation[1] set value 0f
