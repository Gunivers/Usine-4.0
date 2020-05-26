#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:prodution/output
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Créer l'item
execute as @e[tag=FactorySummoner,scores={ProdCountDown=1},tag=!EmergencyStop] at @s unless entity @e[tag=ItemFactory,distance=..0.5] run playsound minecraft:block.anvil.land master @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[tag=FactorySummoner,scores={ProdCountDown=1},tag=!EmergencyStop] at @s unless entity @e[tag=ItemFactory,distance=..0.5] run function mechanism:production/create_item

execute as @e[tag=FactorySummoner,scores={ProdCountDown=1},tag=!EmergencyStop] run scoreboard players remove @s ScheduledProd 1
# Retrait d'un item au stock
execute as @e[tag=FactorySummoner,scores={ProdCountDown=1,Stack1=1..},tag=!EmergencyStop] run scoreboard players remove @s Stack1 1
execute as @e[tag=FactorySummoner,scores={ProdCountDown=1,Stack2=1..},tag=!EmergencyStop] run scoreboard players remove @s Stack2 1
execute as @e[tag=FactorySummoner,scores={ProdCountDown=1,Stack3=1..},tag=!EmergencyStop] run scoreboard players remove @s Stack3 1
execute as @e[tag=FactorySummoner,scores={ProdCountDown=1,Stack4=1..},tag=!EmergencyStop] run scoreboard players remove @s Stack4 1
execute as @e[tag=FactorySummoner,scores={ProdCountDown=1,Stack5=1..},tag=!EmergencyStop] run scoreboard players remove @s Stack5 1
