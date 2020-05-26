execute store result score @s Var1 run data get entity @s Rotation[0] 1
execute store result score @s Var2 run data get entity @s Rotation[1] 1
#     Detect X
execute at @s[scores={CollisionLocal=1..,Var1=1..179}] run function glib:entity/move/child/forward/collision_detect_neg_x
execute at @s[scores={CollisionLocal=1..,Var1=-179..-1}] run function glib:entity/move/child/forward/collision_detect_pos_x
#     Detect Y
execute at @s[scores={CollisionLocal=1..,Var2=1..}] run function glib:entity/move/child/forward/collision_detect_neg_y
execute at @s[scores={CollisionLocal=1..,Var2=..-1}] run function glib:entity/move/child/forward/collision_detect_pos_y
#     Detect Z
execute at @s[scores={CollisionLocal=1..,Var1=..-91}] run function glib:entity/move/child/forward/collision_detect_neg_z
execute at @s[scores={CollisionLocal=1..,Var1=91..}] run function glib:entity/move/child/forward/collision_detect_neg_z
execute at @s[scores={CollisionLocal=1..,Var1=-89..89}] run function glib:entity/move/child/forward/collision_detect_pos_z

# REACTIONS


scoreboard players set @s[tag=Collision] Var4 0

execute if entity @s[tag=CollisionLocal] run function glib:entity/move/config/local_collision_reactions/_main_

# UPDATE

function glib:entity/orientation/set
