#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:production/storage
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Bulb-Base
execute as @e[tag=ItemFactory,tag=Metal] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Bulb-Base,distance=..10] Stack1 1
# Bulb-Body
execute as @e[tag=ItemFactory,tag=Plastic] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Bulb-Body,distance=..10] Stack1 1
# Bulb-Head
execute as @e[tag=ItemFactory,tag=Glass] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Bulb-Head,distance=..10] Stack1 1
# Bulb-Assembly
execute as @e[tag=ItemFactory,tag=Bulb-Base] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Bulb-Test,distance=..10] Stack1 1
execute as @e[tag=ItemFactory,tag=Bulb-Body] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Bulb-Test,distance=..10] Stack2 1
execute as @e[tag=ItemFactory,tag=Bulb-Head] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Bulb-Test,distance=..10] Stack3 1
execute as @e[tag=ItemFactory,tag=ElectricBoard] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Bulb-Test,distance=..10] Stack4 1
execute as @e[tag=ItemFactory,tag=DEL] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Bulb-Test,distance=..10] Stack5 1

# Lamp-Planks
execute as @e[tag=ItemFactory,tag=Wood] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Lamp-Planks,distance=..10] Stack1 1
# Lamp-Body
execute as @e[tag=ItemFactory,tag=Lamp-Planks] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Lamp-Body,distance=..10] Stack1 1
execute as @e[tag=ItemFactory,tag=Cable] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Lamp-Body,distance=..10] Stack2 1

# Lampshade-Ring
execute as @e[tag=ItemFactory,tag=Metal] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Lampshade-Ring,distance=..10] Stack1 1
# Lampshade-Assembly
execute as @e[tag=ItemFactory,tag=Cloth] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Lampshade-Assembly,distance=..10] Stack1 1
execute as @e[tag=ItemFactory,tag=Lampshade-Ring] at @s if block ~ ~-1 ~ bedrock run scoreboard players add @e[tag=FactorySummoner,tag=Lampshade-Assembly,distance=..10] Stack2 1

# Global storage
execute as @e[tag=FactorySummoner] run scoreboard players operation @s Storage = @s Stack1
execute as @e[tag=FactorySummoner] run scoreboard players operation @s Storage += @s Stack2
execute as @e[tag=FactorySummoner] run scoreboard players operation @s Storage += @s Stack3
execute as @e[tag=FactorySummoner] run scoreboard players operation @s Storage += @s Stack4
execute as @e[tag=FactorySummoner] run scoreboard players operation @s Storage += @s Stack5

execute as @e[type=!player,tag=ItemFactory] at @s if block ~ ~-1 ~ bedrock run kill @s
