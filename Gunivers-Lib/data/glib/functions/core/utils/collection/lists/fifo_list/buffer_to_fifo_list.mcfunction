# NAME: FIFO List - bufferToFifoList 
# PATH: glib:collection/lists/fifo_list/buffer_to_fifo_list

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# NOTE: Copy the entity's buffer onto the FIFO list.

# CODE:

data modify entity @s ArmorItems[2].tag.fifo set from entity @s ArmorItems[2].tag.buffer