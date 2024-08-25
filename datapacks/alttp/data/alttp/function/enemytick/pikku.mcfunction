#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=pikkuzo] if score @s enemylink = @e[type=armor_stand,tag=pikku,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#STEALING
execute if entity @e[type=zombie,tag=link_b,team=!passive] if entity @p[distance=..1.5] run function alttp:pikkuscatter
execute if entity @e[type=zombie,tag=link_b,team=!passive] if entity @p[distance=..1.5] run function alttp:pikkuscatter
execute if entity @e[type=zombie,tag=link_b,team=!passive] if entity @p[distance=..1.5] run function alttp:pikkuscatter
execute if entity @e[type=zombie,tag=link_b,team=!passive] if entity @p[distance=..1.5] run function alttp:pikkuscatter
execute if entity @e[type=zombie,tag=link_b,team=!passive] if entity @p[distance=..1.5] run team join passive @e[type=zombie,tag=link_b]
execute if entity @e[type=zombie,tag=link_b,team=passive] run scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 500.. run team leave @e[type=zombie,tag=link_b]
execute if score @s enemydummy matches 500.. run scoreboard players set @s enemydummy 0

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a