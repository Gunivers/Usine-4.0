#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:filters/filter_system
# Documentation:
# Note: Fait tourner toutes entités ayant le tag GoLeft de -90° et le tag GoRight de 90°.

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Ajout de la rotation
scoreboard players set @e[tag=GoLeft] Var1 -45
scoreboard players set @e[tag=GoRight] Var1 45
execute as @e[tag=GoLeft] run function gunivers-lib:entity/orientation/add_h
execute as @e[tag=GoRight] run function gunivers-lib:entity/orientation/add_h

# Reset
tag @e[tag=GoLeft] remove GoLeft
tag @e[tag=GoRight] remove GoRight
