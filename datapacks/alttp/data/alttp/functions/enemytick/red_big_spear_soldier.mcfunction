#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=red_big_spear_soldierzo] if score @s enemylink = @e[type=armor_stand,tag=red_big_spear_soldier,limit=1,sort=nearest] enemylink run tag @s add link_b

#THROW
scoreboard players add @s enemydummy2 1
execute if score @s enemydummy2 matches 40 if entity @p[distance=..10] run function alttp:red_big_spearthrow
execute if score @s enemydummy2 matches 60.. run scoreboard players set @s enemydummy2 0

#LINKY
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a