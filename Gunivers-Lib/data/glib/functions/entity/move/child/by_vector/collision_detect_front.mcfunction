tag @s add CollisionFront

summon area_effect_cloud ~ ~ ~ {Invisible:1,Tags:["Glib","Glib_Tmp_Collision_Detection"]}
execute at @s as @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] run function glib:entity/location/accuracy/10-3/get
execute store result entity @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] Pos[0] double 0.001 run scoreboard players operation @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] LocX += @s Var1
execute store result entity @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] Pos[1] double 0.001 run scoreboard players operation @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] LocY += @s Var2
execute store result entity @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] Pos[2] double 0.001 run scoreboard players operation @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] LocZ += @s Var3

execute at @e[type=area_effect_cloud,tag=Glib_Tmp_Collision_Detection,limit=1,sort=nearest] if block ~ ~ ~ #glib:no_collision run tag @s remove CollisionFront
tag @s[scores={VectorX=0}] remove CollisionFront


#DEBUG
execute if entity @s[tag=Debug] at @e[tag=Glib_Tmp_Collision_Detection] run summon falling_block ~-0.01 ~-0.51 ~-0.46 {BlockState:{Name:"oak_button"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# execute at @s[tag=CollisionFront,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"coal_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG

kill @e[tag=Glib_Tmp_Collision_Detection]
