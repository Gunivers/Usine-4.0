#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:conveyors/move
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# AS orientation
function mechanism:conveyors/get_rail_orientation
execute as @s[tag=ItemFactory,tag=Move] run function mechanism:filters/main

#execute at @s[tag=ItemFactory,tag=Move] positioned ~ ~0.1 ~ run particle firework ~ ~ ~ 0 0 0 0 1 force


# Item orientation
execute store result score @s Var1 run data get entity @s Rotation[1]

data modify entity @s Pose merge value {Head:[1f,0f,0f]}
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s Var1

# AS Gravity
scoreboard objectives add GravityIncrement dummy
execute if entity @s[tag=Move] run scoreboard players add @s GravityIncrement 1

execute store result score @s Var5 run data get entity @s OnGround
execute if entity @s[scores={Var5=1}] run scoreboard players set @s GravityIncrement 0
execute if entity @s[tag=NoGravity] run scoreboard players set @s GravityIncrement 0
#tellraw @a ["",{"text":"OnGround: "},{"score":{"name":"@s","objective":"Var5"}},{"text":"   V_Y: "},{"score":{"name":"@s","objective":"VectorY"}}]


# Calcul vectors
function glib:entity/vector/get_by_actual_orientation
scoreboard players operation @s VectorX /= 10 Constant
scoreboard players operation @s VectorY /= 10 Constant
scoreboard players operation @s VectorZ /= 10 Constant

scoreboard players set @s Var5 -24
scoreboard players operation @s Var5 *= @s GravityIncrement
scoreboard players operation @s VectorY += @s Var5


# Repositioning
scoreboard players operation @s Var4 = @s VectorX
scoreboard players operation @s Var5 = @s VectorY
scoreboard players operation @s Var6 = @s VectorZ
execute if block ~ ~-0.2 ~ redstone_block align xyz positioned ~0.5 ~ ~0.5 run function glib:entity/vector/get_ata
scoreboard players operation @s VectorX /= 8 Constant
scoreboard players operation @s VectorY /= 8 Constant
scoreboard players operation @s VectorZ /= 8 Constant
scoreboard players operation @s VectorX += @s Var4
scoreboard players operation @s VectorY += @s Var5
scoreboard players operation @s VectorZ += @s Var6


# Move
execute if entity @s[tag=Move] run function glib:entity/move/vector_to_motion
