#BOUNCE
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 0 facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute if score @s enemydummy matches 0 run playsound block.water.ambient weather @p ~ ~ ~ 100000 2

execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 1.. if block ^ ^ ^0.2 #gothrough run tp @s ^ ^ ^0.2

execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 1 if block ~ ~0.1 ~ #gothrough run tp @s ~ ~0.1 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 2 if block ~ ~0.12 ~ #gothrough run tp @s ~ ~0.12 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 3 if block ~ ~0.15 ~ #gothrough run tp @s ~ ~0.15 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 4 if block ~ ~0.17 ~ #gothrough run tp @s ~ ~0.17 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 5 if block ~ ~0.2 ~ #gothrough run tp @s ~ ~0.2 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 6 if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.2 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 7 if block ~ ~-0.17 ~ #gothrough run tp @s ~ ~-0.17 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 8 if block ~ ~-0.15 ~ #gothrough run tp @s ~ ~-0.15 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 9 if block ~ ~-0.12 ~ #gothrough run tp @s ~ ~0.12 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 10 if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~

execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 11.. if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.2 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 11.. if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute at @s unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 11.. if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~

execute unless entity @s[tag=icerodfrozen] at @s if score @s enemydummy matches 11..24 unless block ~ ~-0.01 ~ #gothrough run scoreboard players set @s enemydummy 25

execute unless entity @s[tag=icerodfrozen] if score @s enemydummy matches 25.. run scoreboard players set @s enemydummy -1

#TEXTURE
execute if entity @s[tag=icerodfrozen] run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:78}},{}]}
execute unless entity @s[tag=icerodfrozen] run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:77}},{}]}

#DAMAGING
execute unless entity @s[tag=icerodfrozen] if entity @p[distance=..0.7] run scoreboard players set @p set_damage 5
execute unless entity @s[tag=icerodfrozen] if entity @p[distance=..0.7] run playsound entity.player.splash weather @p ~ ~ ~ 1000000
execute unless entity @s[tag=icerodfrozen] if entity @p[distance=..0.7] run particle falling_water ~ ~ ~ 0.7 0.7 0.7 0.1 100 force
execute unless entity @s[tag=icerodfrozen] if entity @p[distance=..0.7] run kill @s