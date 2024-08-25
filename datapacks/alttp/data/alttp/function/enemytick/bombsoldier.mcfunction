#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=bombsoldierzo] if score @s enemylink = @e[type=armor_stand,tag=bombsoldier,limit=1,sort=nearest] enemylink run tag @s add link_b

execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death
tp @e[type=zombie,tag=link_b] ~ ~ ~

#bomb throwing
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 80.. run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 40 if entity @p[distance=..20] positioned ~ ~1 ~ run function alttp:enemy_throwbomb

#face player
execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a