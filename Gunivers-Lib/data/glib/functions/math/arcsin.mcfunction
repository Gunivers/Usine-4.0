#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Luludatra
# Contributors: KubbyDev
# MC Version: 1.13
# Last check:

# Original path: glib:math/arcsin
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# - This function returns asin(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s Var2 = @s Var1
scoreboard players operation @s[scores={Var2=..-1}] Var2 *= -1 Constant

scoreboard players set @s[scores={Var2=0..8}] Res1 0
scoreboard players set @s[scores={Var2=8..26}] Res1 1
scoreboard players set @s[scores={Var2=26..43}] Res1 2
scoreboard players set @s[scores={Var2=43..61}] Res1 3
scoreboard players set @s[scores={Var2=61..78}] Res1 4
scoreboard players set @s[scores={Var2=78..95}] Res1 5
scoreboard players set @s[scores={Var2=95..113}] Res1 6
scoreboard players set @s[scores={Var2=113..130}] Res1 7
scoreboard players set @s[scores={Var2=130..156}] Res1 8
scoreboard players set @s[scores={Var2=156..182}] Res1 9
scoreboard players set @s[scores={Var2=182..199}] Res1 10
scoreboard players set @s[scores={Var2=199..216}] Res1 11
scoreboard players set @s[scores={Var2=216..233}] Res1 12
scoreboard players set @s[scores={Var2=233..250}] Res1 13
scoreboard players set @s[scores={Var2=250..267}] Res1 14
scoreboard players set @s[scores={Var2=267..284}] Res1 15
scoreboard players set @s[scores={Var2=284..300}] Res1 16
scoreboard players set @s[scores={Var2=300..317}] Res1 17
scoreboard players set @s[scores={Var2=317..333}] Res1 18
scoreboard players set @s[scores={Var2=333..350}] Res1 19
scoreboard players set @s[scores={Var2=350..366}] Res1 20
scoreboard players set @s[scores={Var2=366..382}] Res1 21
scoreboard players set @s[scores={Var2=382..398}] Res1 22
scoreboard players set @s[scores={Var2=398..414}] Res1 23
scoreboard players set @s[scores={Var2=414..430}] Res1 24
scoreboard players set @s[scores={Var2=430..446}] Res1 25
scoreboard players set @s[scores={Var2=446..461}] Res1 26
scoreboard players set @s[scores={Var2=461..477}] Res1 27
scoreboard players set @s[scores={Var2=477..492}] Res1 28
scoreboard players set @s[scores={Var2=492..507}] Res1 29
scoreboard players set @s[scores={Var2=507..522}] Res1 30
scoreboard players set @s[scores={Var2=522..537}] Res1 31
scoreboard players set @s[scores={Var2=537..551}] Res1 32
scoreboard players set @s[scores={Var2=552..566}] Res1 33
scoreboard players set @s[scores={Var2=566..580}] Res1 34
scoreboard players set @s[scores={Var2=580..594}] Res1 35
scoreboard players set @s[scores={Var2=594..608}] Res1 36
scoreboard players set @s[scores={Var2=608..622}] Res1 37
scoreboard players set @s[scores={Var2=622..636}] Res1 38
scoreboard players set @s[scores={Var2=636..649}] Res1 39
scoreboard players set @s[scores={Var2=649..662}] Res1 40
scoreboard players set @s[scores={Var2=662..675}] Res1 41
scoreboard players set @s[scores={Var2=675..688}] Res1 42
scoreboard players set @s[scores={Var2=688..700}] Res1 43
scoreboard players set @s[scores={Var2=701..713}] Res1 44
scoreboard players set @s[scores={Var2=713..725}] Res1 45
scoreboard players set @s[scores={Var2=725..737}] Res1 46
scoreboard players set @s[scores={Var2=737..748}] Res1 47
scoreboard players set @s[scores={Var2=749..760}] Res1 48
scoreboard players set @s[scores={Var2=760..771}] Res1 49
scoreboard players set @s[scores={Var2=771..782}] Res1 50
scoreboard players set @s[scores={Var2=782..793}] Res1 51
scoreboard players set @s[scores={Var2=793..803}] Res1 52
scoreboard players set @s[scores={Var2=803..814}] Res1 53
scoreboard players set @s[scores={Var2=814..824}] Res1 54
scoreboard players set @s[scores={Var2=824..833}] Res1 55
scoreboard players set @s[scores={Var2=833..843}] Res1 56
scoreboard players set @s[scores={Var2=843..852}] Res1 57
scoreboard players set @s[scores={Var2=852..861}] Res1 58
scoreboard players set @s[scores={Var2=861..870}] Res1 59
scoreboard players set @s[scores={Var2=870..878}] Res1 60
scoreboard players set @s[scores={Var2=878..887}] Res1 61
scoreboard players set @s[scores={Var2=887..894}] Res1 62
scoreboard players set @s[scores={Var2=895..902}] Res1 63
scoreboard players set @s[scores={Var2=902..909}] Res1 64
scoreboard players set @s[scores={Var2=910..917}] Res1 65
scoreboard players set @s[scores={Var2=917..923}] Res1 66
scoreboard players set @s[scores={Var2=923..930}] Res1 67
scoreboard players set @s[scores={Var2=930..936}] Res1 68
scoreboard players set @s[scores={Var2=936..942}] Res1 69
scoreboard players set @s[scores={Var2=942..948}] Res1 70
scoreboard players set @s[scores={Var2=948..953}] Res1 71
scoreboard players set @s[scores={Var2=953..958}] Res1 72
scoreboard players set @s[scores={Var2=958..963}] Res1 73
scoreboard players set @s[scores={Var2=963..968}] Res1 74
scoreboard players set @s[scores={Var2=968..972}] Res1 75
scoreboard players set @s[scores={Var2=972..976}] Res1 76
scoreboard players set @s[scores={Var2=976..979}] Res1 77
scoreboard players set @s[scores={Var2=980..983}] Res1 78
scoreboard players set @s[scores={Var2=983..986}] Res1 79
scoreboard players set @s[scores={Var2=986..988}] Res1 81
scoreboard players set @s[scores={Var2=989..991}] Res1 82
scoreboard players set @s[scores={Var2=991..993}] Res1 83
scoreboard players set @s[scores={Var2=993..995}] Res1 84
scoreboard players set @s[scores={Var2=995..996}] Res1 85
scoreboard players set @s[scores={Var2=996..998}] Res1 86
scoreboard players set @s[scores={Var2=998..999}] Res1 87
scoreboard players set @s[scores={Var2=999}] Res1 88
scoreboard players set @s[scores={Var2=999}] Res1 89
scoreboard players set @s[scores={Var2=999..1000}] Res1 90

scoreboard players operation @s[scores={Var1=..-1}] Res1 *= -1 Constant
