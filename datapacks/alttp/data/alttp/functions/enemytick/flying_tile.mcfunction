#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=tilesf] if score @s enemylink = @e[type=armor_stand,tag=flying_tile,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run particle block green_glazed_terracotta ~ ~ ~ 0.05 0.1 0.05 0.05 5 force
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#WHEN TILE TICK IS REACHED A RANDOM NEARBY TILE IS ACTIVATED
execute if entity @s[tag=activated] unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 1..10 unless entity @s[tag=icerodfrozen] run tp @s ~ ~0.075 ~ ~10 ~
execute if score @s enemydummy matches 11..15 unless entity @s[tag=icerodfrozen] run tp @s ~ ~0.05 ~ ~15 ~
execute if score @s enemydummy matches 16..20 unless entity @s[tag=icerodfrozen] run tp @s ~ ~0.04 ~ ~20 ~

execute if score @s enemydummy matches 21..50 unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~ ~25 ~

execute if score @s enemydummy matches 51 facing entity @p eyes rotated ~ 0 unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~ ~ ~

execute at @s if score @s enemydummy matches 52.. unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.35 ~ ~
execute if score @s enemydummy matches 52.. run scoreboard players set @p[distance=..0.5] set_damage 4
execute if score @s enemydummy matches 52.. positioned ~ ~-1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage 4
execute if score @s enemydummy matches 52.. unless block ~ ~ ~ #gothrough run particle block green_glazed_terracotta ~ ~ ~ 0.05 0.1 0.05 0.05 5 force
execute if score @s enemydummy matches 52.. unless block ~ ~ ~ #gothrough run kill @e[type=silverfish,tag=link_b]
execute if score @s enemydummy matches 52.. if entity @p[distance=..0.5] run particle block green_glazed_terracotta ~ ~ ~ 0.05 0.1 0.05 0.05 5 force
execute if score @s enemydummy matches 52.. if entity @p[distance=..0.5] run kill @e[type=silverfish,tag=link_b]
execute if score @s enemydummy matches 52.. positioned ~ ~-1.3 ~ if entity @p[distance=..0.5] run particle block green_glazed_terracotta ~ ~ ~ 0.05 0.1 0.05 0.05 5 force
execute if score @s enemydummy matches 52.. positioned ~ ~-1.3 ~ if entity @p[distance=..0.5] run kill @e[type=silverfish,tag=link_b]

execute if score @s enemydummy matches 52.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}

execute if score @s enemydummy matches 200.. run kill @e[type=silverfish,tag=link_b]

#CENTER DAT BOI
execute unless score @s enemydummy matches 0.. align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish,tag=link_b] remove link_b
tag @s remove link_a