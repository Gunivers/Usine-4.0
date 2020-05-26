#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Theogiraudet & Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:filters/main
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute positioned 378 12 -191 align xyz positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mechanism:filters/config/filter1
execute positioned 378 12 -175 align xyz positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mechanism:filters/config/filter2
execute positioned 372 12 -191 align xyz positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mechanism:filters/config/filter3
execute positioned 372 12 -175 align xyz positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mechanism:filters/config/filter4
execute positioned 372 12 -159 align xyz positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mechanism:filters/config/filter5
execute positioned 372 6 -175 align xyz positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mechanism:filters/config/filter6
execute positioned 372 6 -159 align xyz positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mechanism:filters/config/filter7
execute positioned 385 6 -144 align xyz positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mechanism:filters/config/filter8
execute positioned 412 9 -175 align xyz positioned ~ ~ ~ if entity @s[dx=0,dy=0,dz=0] at @s run function mechanism:filters/config/filter9

function mechanism:filters/filter_system
