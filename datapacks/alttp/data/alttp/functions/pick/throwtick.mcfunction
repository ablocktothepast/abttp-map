tp @s ^ ^ ^0.35 ~ ~3
execute if entity @s[type=armor_stand] unless block ~ ~1.5 ~ #gothrough if entity @s[tag=pot] run particle block brown_concrete_powder ~ ~1.6 ~ 0.3 0.5 0.3 0.1 50 force
execute if entity @s[type=armor_stand] unless block ~ ~1.5 ~ #gothrough if entity @s[tag=stone] run particle block stone ~ ~1.6 ~ 0.3 0.5 0.3 0.1 50 force
execute if entity @s[type=armor_stand] unless block ~ ~1.5 ~ #gothrough if entity @s[tag=skull] run particle block bone_block ~ ~1.6 ~ 0.3 0.5 0.3 0.1 50 force
execute if entity @s[type=armor_stand] unless block ~ ~1.5 ~ #gothrough if entity @s[tag=hrock] run particle block cobblestone ~ ~1.6 ~ 0.3 0.5 0.3 0.1 50 force
execute if entity @s[type=armor_stand] unless block ~ ~1.5 ~ #gothrough run kill @s

execute if entity @s[type=chicken] unless block ~ ~-0.5 ~ #gothrough run tag @s remove init
execute if entity @s[type=chicken] unless block ~ ~-0.5 ~ #gothrough run tag @s remove thrown
execute if entity @s[type=chicken] unless block ~ ~-0.5 ~ #gothrough run tag @s remove heldchick
execute if entity @s[type=chicken] unless block ~ ~-0.5 ~ #gothrough run data merge entity @s {NoAI:0b}