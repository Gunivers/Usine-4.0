#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/local_vector/convert_from_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#local-vector
# Note:

#__________________________________________________
# INIT

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

scoreboard objectives add VectorLeft dummy
scoreboard objectives add VectorUp dummy
scoreboard objectives add VectorFront dummy
scoreboard objectives add VectorSpeedLocal dummy

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Var6 dummy
scoreboard objectives add Var7 dummy
scoreboard objectives add Var8 dummy
scoreboard objectives add Var9 dummy

scoreboard objectives add Res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s Var8 run data get entity @s Rotation[0] 1
execute store result score @s Var9 run data get entity @s Rotation[1] 1

scoreboard players operation @s VectorSpeedLocal = @s VectorSpeed

### DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Entity_LocalVectors_ConvertFromVectors,tag=!Glib_Init_Menu] run function glib:core/utils/debug/entity/local_vectors/convert_from_vectors/1
### END DEBUG

# Cos(Theta)
scoreboard players operation @s Var1 = @s Var8
function glib:math/cos
scoreboard players operation @s Var4 = @s Res

# Sin(Theta)
scoreboard players operation @s Var1 = @s Var8
function glib:math/sin
scoreboard players operation @s Var5 = @s Res

# Cos(Phi)
scoreboard players operation @s Var1 = @s Var9
function glib:math/cos
scoreboard players operation @s Var6 = @s Res

# Sin(Phi)
scoreboard players operation @s Var1 = @s Var9
function glib:math/sin
scoreboard players operation @s Var7 = @s Res

### DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Entity_LocalVectors_ConvertFromVectors,tag=!Glib_Init_Menu] run function glib:core/utils/debug/entity/local_vectors/convert_from_vectors/2
### END DEBUG


# Vector Left
scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var1 *= Neg Constant
scoreboard players operation @s VectorLeft = @s Var1

scoreboard players operation @s Var1 = @s VectorZ
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s VectorLeft -= @s Var1

# Vector Up
scoreboard players operation @s Var1 = @s VectorY
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s VectorUp = @s Var1

scoreboard players operation @s Var1 = @s VectorZ
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorUp += @s Var1

scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorUp -= @s Var1

# Vector Front
scoreboard players operation @s Var1 = @s VectorZ
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorFront = @s Var1

scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorFront -= @s Var1

scoreboard players operation @s Var1 = @s VectorY
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s VectorFront -= @s Var1

scoreboard players set @s VectorSpeed 1000

### DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Entity_LocalVectors_ConvertFromVectors,tag=!Glib_Init_Menu] run function glib:core/utils/debug/entity/local_vectors/convert_from_vectors/3
### END DEBUG
