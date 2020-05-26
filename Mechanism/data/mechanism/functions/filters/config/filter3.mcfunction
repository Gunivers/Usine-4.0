# NAME: Filter 1
# PATH: mechanism:filters/filter1

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.15.X

# NOTE:
# Si l'item passant dans le rayon du filtre est une carotte, alors elle sera filtré vers la droite, si c'est de la rotten_flesh, elle sera filtrée vers la gauche. Si autre, l'item continuera tout droit.

# CODE:
#____________________________________________________________________________________________________

# Filtre
tag @s[tag=ItemFactory,tag=Plastic] add GoLeft
tag @s[tag=ItemFactory,tag=Glass] add GoLeft
tag @s[tag=ItemFactory,tag=ElectricBoard] add GoLeft
tag @s[tag=ItemFactory,tag=DEL] add GoLeft