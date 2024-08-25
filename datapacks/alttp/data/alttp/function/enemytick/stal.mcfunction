#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=stalsf] if score @s enemylink = @e[type=armor_stand,tag=stal,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
execute at @e[type=silverfish,tag=link_b] run tp @s ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] positioned ~ ~ ~ run function alttp:enemy_death

#MOVEMENT
effect give @e[type=silverfish,tag=link_b] slowness infinite 100 true
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 20.. as @e[type=silverfish,tag=link_b] at @s facing entity @p eyes rotated ~ -25 unless entity @s[tag=icerodfrozen] run function alttp:stal_launch
execute if score @s enemydummy matches 20.. run scoreboard players set @s enemydummy 0
execute if score @s enemydummy matches 19 facing entity @p eyes unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~ ~ ~

#Models
execute if block ~ ~-0.01 ~ #gothrough run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 274}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if block ~ ~-0.01 ~ #gothrough run scoreboard players set @s enemydummy2 0
execute unless block ~ ~-0.01 ~ #gothrough run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 273}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute unless block ~ ~-0.01 ~ #gothrough if score @s enemydummy2 matches 0 run particle block{block_state:"minecraft:pink_candle"} ~ ~0.25 ~ 0.2 0.1 0.2 0.2 15 force
execute unless block ~ ~-0.01 ~ #gothrough run scoreboard players set @s enemydummy2 1

#DAMAGING
execute unless score @s enemydummy3 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 2
execute unless score @s enemydummy3 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy3 30
execute if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a