#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:camera/place_screens
# Documentation:
# Note:

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute positioned 401.97 15 -174.50 run kill @e[type=item_frame,distance=..3,tag=Camera]

# Caméra 1
summon minecraft:item_frame 401.97 16.50 -175.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 50,display:{Name:'"Export"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 2
summon minecraft:item_frame 401.97 16.50 -174.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 51,display:{Name:'"Salle de contrôle"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 3
summon minecraft:item_frame 401.97 16.50 -173.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 52,display:{Name:'"Emballage"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 4
summon minecraft:item_frame 401.97 15.50 -175.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 53,display:{Name:'"Assemblage"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 5
summon minecraft:item_frame 401.97 15.50 -174.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 54,display:{Name:'"Palette"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 6
summon minecraft:item_frame 401.97 15.50 -173.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 55,display:{Name:'"Salle de contrôle 2"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 7
summon minecraft:item_frame 401.97 14.50 -175.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 56,display:{Name:'"Ampoule"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 8
summon minecraft:item_frame 401.97 14.50 -174.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 57,display:{Name:'"Centrale électrique"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 9
summon minecraft:item_frame 401.97 14.50 -173.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 58,display:{Name:'"Patio"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 10
summon minecraft:item_frame 401.97 13.50 -175.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 62,display:{Name:'"Cafétéria"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 11
summon minecraft:item_frame 401.97 13.50 -174.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 60,display:{Name:'"Vestiaire"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}

# Caméra 12
summon minecraft:item_frame 401.97 13.50 -173.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, Item: {id: "minecraft:filled_map", Count: 1b, tag: {map: 61,display:{Name:'"Bureau"'}}}, ItemDropChance: 0.0f,Tags:["Camera"]}