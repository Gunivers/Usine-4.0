scoreboard players set Torch Var1 0

execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~ ~ ~ torch keep
execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~ ~1 ~ torch keep

execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~0.6 ~ ~ torch keep
execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~-0.6 ~ ~ torch keep
execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~ ~ ~0.6 torch keep
execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~ ~ ~-0.6 torch keep

execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~0.6 ~1 ~ torch keep
execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~-0.6 ~1 ~ torch keep
execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~ ~1 ~0.6 torch keep
execute if score Torch Var1 matches 0 store success score Torch Var1 run setblock ~ ~1 ~-0.6 torch keep

