#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=kuzo] if score @s enemylink = @e[type=armor_stand,tag=ku,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
tp @s ~ ~ ~ facing entity @p eyes
execute at @s run tp @s ~ ~ ~ ~ 0
execute at @s run tp @e[type=zombie,tag=link_b] ~ ~ ~

scoreboard players add @s dummy 1

#SHOOTING WHEN PLAYER NEARBY
execute if score @s dummy matches 50 if entity @p[distance=..12] run function alttp:ku_shoot

#HIDING IN WATER IF NO PLAYER IS NEARBY
execute if score @s dummy matches 40..60 if entity @p[distance=..12] run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 32}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}], Invulnerable: 0b}
execute unless score @s dummy matches 40..60 run data merge entity @s {Invulnerable:1b,HandItems:[{},{}]}
execute unless entity @p[distance=..12] run data merge entity @s {Invulnerable:1b,HandItems:[{},{}]}

execute if score @s dummy matches 80.. run scoreboard players set @s dummy 0

#DEATH
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a