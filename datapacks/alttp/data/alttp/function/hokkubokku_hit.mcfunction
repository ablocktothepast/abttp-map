execute if score @s enemydummy matches 4 run kill @e[type=armor_stand,tag=body1]
execute if score @s enemydummy matches 3 run kill @e[type=armor_stand,tag=body2]
execute if score @s enemydummy matches 2 run kill @e[type=armor_stand,tag=body3]
execute if score @s enemydummy matches 2 run data merge entity @e[type=zombie,tag=link_b,limit=1] {Health:25f}

function alttp:summon/hokkubokkusegment
scoreboard players remove @s enemydummy 1