#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/view/can_see_ata
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#view
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy

#__________________________________________________
# CONFIG

#Var1 -> Range*2 (1 blocs -> Var1 = 2)
scoreboard players set @s[tag=!Glib_OverrideConfig] Var1 200

#__________________________________________________
# CODE

tag @s remove Glib_CanSee

execute at @s run summon area_effect_cloud ~ ~1.7 ~ {Tags:["Glib","Glib_CanSee_Aim","Glib_CanSee_Tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_CanSee_Target","Glib_CanSee_Tmp"]}

execute as @e[tag=Glib_CanSee_Aim] positioned as @s facing entity @e[tag=Glib_CanSee_Target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~

scoreboard players operation @e[tag=Glib_CanSee_Aim] Var1 = @s Var1

execute as @e[tag=Glib_CanSee_Aim] at @s run function glib:entity/view/child/can_see-loop

execute at @e[tag=Glib_CanSee_Aim] if entity @e[tag=Glib_CanSee_Target,distance=..1] run tag @s add Glib_CanSee

kill @e[tag=Glib_CanSee_Tmp]
