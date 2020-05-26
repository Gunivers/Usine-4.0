#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:camera/main
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute as @a[scores={Camera=1..}] at @s run function mechanism:camera/in_cam
execute as @a[x=392,y=12,z=-182,dx=18,dy=4,dz=14] run function mechanism:camera/enter_in_cam
