#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=drowned,tag=moblindr] if score @s enemylink = @e[type=armor_stand,tag=moblin,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=drowned,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=drowned,tag=link_b] run function alttp:enemy_death

#AGGRO
scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 20 at @e[type=drowned,tag=link_b,limit=1,sort=nearest] run summon snowball ~ ~2.5 ~ {Item:{Count:1b,id:"minecraft:activator_rail"},Tags:["aggroball"]}
execute if score @s enemydummy matches 20 run data modify entity @e[type=snowball,tag=aggroball,limit=1,sort=nearest] Owner set from entity @p UUID

execute if score @s enemydummy matches 100.. run scoreboard players set @s enemydummy 0

#DAMAGE INDICATOR
execute if entity @e[type=drowned,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=drowned,tag=link_b] run tag @s add link_init
tag @e[type=drowned] remove link_b
tag @s remove link_a