#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:camera/enter_in_cam
# Documentation:
# Note:

#__________________________________________________
# INIT

scoreboard objectives add SeeCam dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players add @s SeeCam 0

# Caméra 1
execute positioned 401.97 16.50 -175.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 1

# Caméra 2
execute positioned 401.97 16.50 -174.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 2

# Caméra 3
execute positioned 401.97 16.50 -173.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 3

# Caméra 4
execute positioned 401.97 15.50 -175.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 4

# Caméra 5
execute positioned 401.97 15.50 -174.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 5

# Caméra 6
execute positioned 401.97 15.50 -173.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 6

# Caméra 7
execute positioned 401.97 14.50 -175.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 7

# Caméra 8
execute positioned 401.97 14.50 -174.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 8

# Caméra 9
execute positioned 401.97 14.50 -173.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 9

# Caméra 10
execute positioned 401.97 13.50 -175.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 10

# Caméra 11
execute positioned 401.97 13.50 -174.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 11

# Caméra 12
execute positioned 401.97 13.50 -173.50 unless entity @e[type=item_frame,distance=..0.2,tag=Camera,nbt={ItemRotation:0b}] run scoreboard players set @s SeeCam 12


execute if entity @s[scores={SeeCam=1..}] if score Partie Scenario matches ..2 run function mechanism:camera/place_day_screens
execute if entity @s[scores={SeeCam=1..}] unless score Partie Scenario matches ..2 run function mechanism:camera/place_night_screens

execute if entity @s[scores={SeeCam=1..}] run scoreboard players operation @s Camera = @s SeeCam
execute if entity @s[scores={SeeCam=1..}] run scoreboard players set @s SeeCam 0
