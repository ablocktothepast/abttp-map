#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=zolsf] if score @s enemylink = @e[type=armor_stand,tag=zol,limit=1,sort=nearest] enemylink run tag @s add link_b

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a