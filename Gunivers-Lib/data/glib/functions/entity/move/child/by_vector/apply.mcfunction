execute at @s run function glib:entity/location/accuracy/10-3/get

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s LocX += @s Var1
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation @s LocY += @s Var2
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s LocZ += @s Var3
