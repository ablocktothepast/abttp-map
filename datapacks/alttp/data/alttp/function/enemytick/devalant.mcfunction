#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=devalantsf] if score @s enemylink = @e[type=armor_stand,tag=devalant,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#SINKY SINKY
execute as @p[distance=..3] at @s facing entity @e[type=armor_stand,tag=devalant,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.15

#KILLY KILLY
execute unless score @s enemydummy matches 1.. run scoreboard players set @p[distance=..1] set_damage 5
execute unless score @s enemydummy matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy 30

execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a