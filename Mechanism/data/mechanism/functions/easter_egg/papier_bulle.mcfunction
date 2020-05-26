#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:easter_egg/papier_bulle
# Documentation:
# Note:

#__________________________________________________
# INIT

scoreboard objectives add PapierBulle minecraft.used:minecraft.carrot_on_a_stick

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute at @a[scores={PapierBulle=1..}] run playsound minecraft:block.lava.pop master @a ~ ~ ~ 2 2 1
execute as @a[scores={PapierBulle=1..}] at @s anchored eyes positioned ^-0.3 ^-0.3 ^0.5 run particle minecraft:bubble_pop

scoreboard players set @a[scores={PapierBulle=1..}] PapierBulle 0
