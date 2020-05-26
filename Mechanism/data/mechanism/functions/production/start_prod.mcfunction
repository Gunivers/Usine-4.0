#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:production/start_prod
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Ressources
execute as @e[tag=FactorySummoner,tag=Ressources,scores={ScheduledProd=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Ressources,scores={ScheduledProd=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime

# Pallet
execute as @e[tag=FactorySummoner,tag=Pallet,scores={ScheduledProd=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Pallet,scores={ScheduledProd=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime


# Bulb Base
execute as @e[tag=FactorySummoner,tag=Bulb-Base,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Bulb-Base,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime
# Bulb Body
execute as @e[tag=FactorySummoner,tag=Bulb-Body,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Bulb-Body,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime
# Bulb Head
execute as @e[tag=FactorySummoner,tag=Bulb-Head,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Bulb-Head,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime
# Bulb Assembly
execute as @e[tag=FactorySummoner,tag=Bulb-Test,scores={ScheduledProd=1..,Stack1=1..,Stack2=1..,Stack3=1..,Stack4=1..,Stack5=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Bulb-Test,scores={ScheduledProd=1..,Stack1=1..,Stack2=1..,Stack3=1..,Stack4=1..,Stack5=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime



# Lamp-Planks
execute as @e[tag=FactorySummoner,tag=Lamp-Planks,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Lamp-Planks,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime
# Lamp-Body
execute as @e[tag=FactorySummoner,tag=Lamp-Body,scores={ScheduledProd=1..,Stack1=1..,Stack2=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Lamp-Body,scores={ScheduledProd=1..,Stack1=1..,Stack2=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime


# Lampshade-Ring
execute as @e[tag=FactorySummoner,tag=Lampshade-Ring,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Lampshade-Ring,scores={ScheduledProd=1..,Stack1=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime
# Lampshade-Assembly
execute as @e[tag=FactorySummoner,tag=Lampshade-Assembly,scores={ScheduledProd=1..,Stack1=1..,Stack2=1..,ProdCountDown=0}] at @s run playsound minecraft:block.anvil.use master @a[distance=..30] ~ ~ ~ 2 0.5 1
execute as @e[tag=FactorySummoner,tag=Lampshade-Assembly,scores={ScheduledProd=1..,Stack1=1..,Stack2=1..,ProdCountDown=0}] run scoreboard players operation @s ProdCountDown = @s ProdTime
