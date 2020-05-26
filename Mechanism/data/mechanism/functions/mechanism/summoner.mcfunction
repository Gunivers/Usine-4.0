# NAME: Summoner
# PATH: mechanism:mechanism/summoner

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.15.X

# INPUT:
# - SummonerLoop Config (score dummy)

# NOTE:
# Tire un item aléatoire parmi Iron Ingot, Rotten Flesh et Carrot puis invoque une entité représentant cet item sur le tapis roulant.
# Si Summoner Loop Config est à 1, invoque 1 item toutes les 3 secondes, sinon, n'invoque qu'une seule fois l'item.

# CODE:
#____________________________________________________________________________________________________

# Tirage du nombre aléatoire que l'on borne à un nombre entre 0 et 2
execute as @e[tag=FactorySummoner] run function gunivers-lib:math/random
execute as @e[tag=FactorySummoner] run scoreboard players operation @s Res %= 3 Constant
# Création de l'item
execute as @e[tag=FactorySummoner] run scoreboard players operation @s Var1 = @s Res
execute as @e[tag=FactorySummoner] at @s run function mechanism:mechanism/create_item
# Boucle d'invoquation avec une fréquence de 1 item toutes les 3 secondes
execute if score SummonerLoop Config matches 1 run schedule function mechanism:mechanism/summoner 10s