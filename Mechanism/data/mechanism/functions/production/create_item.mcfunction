#__________________________________________________
# INFO     Copyright © 2020 Gunivers. Made for Usine 4.0.

# Authors: Leirof
# Contributors:
# MC Version: 1.15.2
# Last check:

# Original path: mechanism:production/create_item
# Documentation:
# Note: L'entité executant cette fonction crééra un item qui sera capable de bouger sur les rails.

#__________________________________________________
# INIT

scoreboard objectives add ItemType dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Distincion des entités déjà existantes
tag @e[tag=ItemFactory] add Old

execute if entity @s[type=player] run summon armor_stand ~0.0 ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Wood"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6}}]}

# Ressources
execute if entity @s[tag=Ressources] run summon armor_stand ~0.0 ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Wood"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:6}}]}
#execute if entity @s[tag=Ressources] run summon armor_stand ~0.5 ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Glass"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}]}
execute if entity @s[tag=Ressources] run summon armor_stand ~1.0 ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Cable"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:7}}]}
execute if entity @s[tag=Ressources] run summon armor_stand ~1.5 ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","ElectricBoard"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:8}}]}
#execute if entity @s[tag=Ressources] run summon armor_stand ~2.0 ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Plastic"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}]}
#execute if entity @s[tag=Ressources] run summon armor_stand ~2.5 ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","DEL"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}]}
execute if entity @s[tag=Ressources] run summon armor_stand ~3.0 ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Metal"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:10}}]}
execute if entity @s[tag=Ressources] run summon armor_stand ~ ~-3 ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Metal"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:10}}]}
execute if entity @s[tag=Ressources] run summon armor_stand ~1.0 ~-3 ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Cloth"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:13}}]}

# Bulb
#execute if entity @s[tag=Bulb-Base] run summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Bulb-Base"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}]}
#execute if entity @s[tag=Bulb-Body] run summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Bulb-Body"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}]}
#execute if entity @s[tag=Bulb-Head] run summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Bulb-Head"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}]}
execute if entity @s[tag=Bulb-Test] run summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Bulb"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:3}}]}

# Lamp
execute if entity @s[tag=Lamp-Planks] run summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Lamp-Planks"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:11}}]}
execute if entity @s[tag=Lamp-Body] run summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Lamp-Body"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:2}}]}

# Lampshade
execute if entity @s[tag=Lampshade-Ring] run summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Lampshade-Ring"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:5}}]}
execute if entity @s[tag=Lampshade-Assembly] run summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Small:1b,Invisible:1b,Marker:0b,Tags:["ItemFactory","Mechanism","Lampshade"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:4}}]}


# Récupération du score ItemType
scoreboard players operation @e[tag=ItemFactory,tag=!Old] ItemType = @s ItemType
