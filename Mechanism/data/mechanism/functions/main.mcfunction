#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: theogiraudet & Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:main
# Documentation:
# Note:

#__________________________________________________
# INIT

scoreboard objectives add Timer dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Timer global
scoreboard players add @e Timer 1

# Système de caméras
scoreboard players add @a Camera 0
function mechanism:camera/main

# Système de papier bulle
execute if entity @a[scores={PapierBulle=1..}] run function mechanism:easter_egg/papier_bulle

# Système de tapis roulants
execute as @e[type=armor_stand,tag=ItemFactory] at @s run function mechanism:conveyors/move

# Système de lumières intelligentes
execute as @a run scoreboard players operation @s Var1 = @s Timer
execute as @a run scoreboard players operation @s Var1 %= 40 Constant
execute as @a[tag=!NoCourant,scores={Var1=39,Camera=0}] at @s run function mechanism:mechanism/lights

# Système de production (gstion des machines)
function mechanism:production/main

# Scénario
execute as @a[tag=Scenario] at @s run function mechanism:scenario/main

#torch
function mechanism:torch/main


#__________________________________________________
# SECURITY

# Temps de vie des entités
execute as @e[type=armor_stand,tag=ItemFactory] run function gunivers-lib:entity/health/time_to_live
scoreboard players set @e[tag=ItemFactory,scores={TTL=..0}] TTL 1200

