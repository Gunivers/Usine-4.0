tag @a[tag=Torch] remove Torch
execute if score Partie Scenario matches 4.. run tag @a[nbt={SelectedItem:{id:"minecraft:book"}}] add Torch

execute as @a[tag=Torch] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[Torch],Duration:3}

execute as @e[type=area_effect_cloud,tag=Torch] if score @s Timer matches 1.. at @s align xyz positioned ~0.5 ~0.5 ~0.5 run fill ~-1 ~-1 ~-1 ~1 ~3 ~1 air replace torch
execute as @e[type=area_effect_cloud,tag=Torch] unless score @s Timer matches 1.. at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function mechanism:torch/setblock

kill @e[type=area_effect_cloud,tag=Torch,scores={Timer=2..}]