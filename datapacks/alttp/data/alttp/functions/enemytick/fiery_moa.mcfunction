#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=fiery_moasf] if score @s enemylink = @e[type=armor_stand,tag=fiery_moa,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
execute if entity @p[distance=..15] facing entity @p eyes rotated ~ 0 if block ^ ^ ^0.15 #gothrough run tp @s ^ ^ ^0.15 ~ 0
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 40.. run scoreboard players set @s enemydummy 0

execute if entity @p[distance=..8] if score @s enemydummy matches 20 run function alttp:fierymoadrop

execute if entity @s[tag=icerodfrozen] run kill @e[type=silverfish,tag=link_b]

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a