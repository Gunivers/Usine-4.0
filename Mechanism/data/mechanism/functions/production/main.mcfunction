#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:production/main
# Documentation:
# Note:
# - Modify ScheduledProd to increase/dicrease time of production
# - Modify ProdFrequency value to make 1 item every <value> ticks

#__________________________________________________
# INIT

scoreboard objectives add Stack1 dummy
scoreboard objectives add Stack2 dummy
scoreboard objectives add Stack3 dummy
scoreboard objectives add Stack4 dummy
scoreboard objectives add Stack5 dummy
scoreboard objectives add Storage dummy

scoreboard objectives add ScheduledProd dummy
scoreboard objectives add ProdCountDown dummy
scoreboard players add @e ProdCountDown 0
scoreboard objectives add ProdTime dummy
scoreboard objectives add ProdFrequency dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Ecrans de contrôle salle principale.
# Les écrans de contrôle des machines sont géré par un command-block sous le sol en dessous de l'écran.
function mechanism:production/screens

# Summoners persistance
scoreboard players set @a Var1 0
execute as @e[tag=FactorySummoner] run scoreboard players add @a Var1 1
execute unless entity @a[scores={Var1=14}] run function mechanism:production/place_summoners

# Schedule production
execute as @e[tag=FactorySummoner] run scoreboard players operation @s Var1 = @s Timer
execute as @e[tag=FactorySummoner] run scoreboard players operation @s Var1 %= @s ProdFrequency
scoreboard players add @e[tag=FactorySummoner,scores={Var1=0}] ScheduledProd 1

# Checking storage
function mechanism:production/storage
function mechanism:production/start_prod

# Running
execute as @e[tag=FactorySummoner,scores={ProdCountDown=1..},tag=!EmergencyStop] at @s if block ~ ~ ~ activator_rail run scoreboard players remove @s ProdCountDown 1
execute as @e[tag=FactorySummoner,scores={ProdCountDown=1..},tag=!EmergencyStop] at @s if block ~ ~ ~ powered_rail run scoreboard players remove @s ProdCountDown 1

# Output
function mechanism:production/output
