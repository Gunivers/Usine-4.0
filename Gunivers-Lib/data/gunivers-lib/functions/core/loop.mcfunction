#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Import constants
function glib:core/import/constants

# Init menu refresh
scoreboard objectives add Data dummy
scoreboard players set @a[scores={Data=5..}] Data 0
scoreboard objectives add Data dummy
scoreboard players add @a Data 1
execute as @a[tag=Glib_Init_Menu,scores={Data=1}] at @s run function glib:core/menu/main
function glib:core/utils/cache/cache_loop

# Loop Schedule
execute as @e[tag=HeadGlibCache] at @s run function glib:core/utils/schedule/child/loop_schedule

# Debug recorder
execute as @a[tag=Glib_Debug_Stick] run function glib:core/menu/debug/debug_record
execute as @p[tag=Glib_Debug,tag=!Glib_Init_Menu,tag=Glib_Debug_Disp_Tick] run function glib:core/menu/debug/display_tick
execute as @p[tag=Glib_Debug,tag=Debug_Entity_Management,tag=!Glib_Init_Menu] at @s run function glib:core/menu/debug/entity/target_entity_manager
