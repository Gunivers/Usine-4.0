# NAME: Filter 1
# PATH: mechanism:filters/filter1

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.15.X

# NOTE:
# Si l'item passant dans le rayon du filtre est une carotte, alors elle sera filtr� vers la droite, si c'est de la rotten_flesh, elle sera filtr�e vers la gauche. Si autre, l'item continuera tout droit.

# CODE:
#____________________________________________________________________________________________________

# Filtre
tag @s[tag=ItemFactory,tag=Wood] add GoLeft
tag @s[tag=ItemFactory,tag=Cable] add GoLeft

execute at @s[tag=ItemFactory,tag=Cable] run particle firework ~ ~ ~ 0 0 0 0 1 force
