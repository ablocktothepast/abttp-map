#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=red_kodongosf] if score @s enemylink = @e[type=armor_stand,tag=red_kodongo,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#BALLS OF FIRE :o
scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 40 run function alttp:red_kodongoshoot
execute if score @s enemydummy matches 50 run function alttp:red_kodongoshoot
execute if score @s enemydummy matches 60 run function alttp:red_kodongoshoot

execute if score @s enemydummy matches 100.. run scoreboard players set @s enemydummy 0

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a