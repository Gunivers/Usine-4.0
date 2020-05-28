#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/log10
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# - This function takes inputs in [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]). If you want log10(0.5), input 500
# - The output values are scaled by 10 000. They are the exact result +- 0.001 (The maximum error is 0.0008)
# - If you input 0 the function returns log10(0.001), if you input a negative value it returns log10(-x)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:math/log
scoreboard players operation @s Res1 *= 10000 Constant
scoreboard players operation @s Res1 /= 23026 Constant
