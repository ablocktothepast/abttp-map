#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=ropezo] if score @s enemylink = @e[type=armor_stand,tag=rope,limit=1,sort=nearest] enemylink run tag @s add link_b

#MOVEMENT
execute if score @s enemydummy matches 1 unless entity @s[tag=icerodfrozen] run tp @s ~0.1 ~ ~ -90 0
execute if score @s enemydummy matches 2 unless entity @s[tag=icerodfrozen] run tp @s ~-0.1 ~ ~ 90 0
execute if score @s enemydummy matches 3 unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~0.1 0 0
execute if score @s enemydummy matches 4 unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~-0.1 180 0

#TURN AROUND
scoreboard players add @s dummy 1
execute if score @s dummy matches 40.. store result score result rand run random value 1..4
execute if score @s dummy matches 40.. store result score @s enemydummy run scoreboard players get result rand
execute if score @s dummy matches 40.. run scoreboard players set @s dummy 0

#COLLIDE FUN
execute at @s unless block ~ ~ ~ #gothrough if score @s enemydummy matches 1 run tag @s add rot1
execute at @s unless block ~ ~ ~ #gothrough if score @s enemydummy matches 2 run tag @s add rot2
execute at @s unless block ~ ~ ~ #gothrough if score @s enemydummy matches 3 run tag @s add rot3
execute at @s unless block ~ ~ ~ #gothrough if score @s enemydummy matches 4 run tag @s add rot4
execute at @s unless block ~ ~ ~ #gothrough run scoreboard players set @s dummy 0
execute at @s unless block ~ ~ ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^-0.2

execute if entity @s[tag=rot1] run scoreboard players set @s enemydummy 2
execute if entity @s[tag=rot1] run tag @s remove rot1

execute if entity @s[tag=rot2] run scoreboard players set @s enemydummy 1
execute if entity @s[tag=rot2] run tag @s remove rot2

execute if entity @s[tag=rot3] run scoreboard players set @s enemydummy 4
execute if entity @s[tag=rot3] run tag @s remove rot3

execute if entity @s[tag=rot4] run scoreboard players set @s enemydummy 3
execute if entity @s[tag=rot4] run tag @s remove rot4

#PLAYA
execute at @s positioned ^ ^ ^1 if entity @p[distance=..1] run tag @s add horny
execute at @s positioned ^ ^ ^2 if entity @p[distance=..1] run tag @s add horny
execute at @s positioned ^ ^ ^3 if entity @p[distance=..1] run tag @s add horny
execute at @s positioned ^ ^ ^4 if entity @p[distance=..1] run tag @s add horny

execute if entity @s[tag=horny] run scoreboard players set @s enemydummy -1
execute if entity @s[tag=horny] run tag @s remove horny

execute if score @s enemydummy matches ..-1 run scoreboard players set @s dummy 0
execute if score @s enemydummy matches ..-1 run scoreboard players remove @s enemydummy 1
execute if score @s enemydummy matches ..-80 run scoreboard players set @s dummy 39
execute if score @s enemydummy matches ..-80 run scoreboard players set @s enemydummy 1

execute at @s if score @s enemydummy matches ..-1 unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~ facing entity @p
execute at @s if score @s enemydummy matches ..-1 run tp @s ~ ~ ~ ~ 0
execute at @s if score @s enemydummy matches ..-1 if block ^ ^ ^0.5 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1

#PHYSICS
execute at @s if block ~ ~-0.1 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.1 ~

execute at @s if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death
execute at @s run tp @e[type=zombie,tag=link_b] ~ ~ ~ ~ ~

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#ANIMATION
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy5 1
execute if score @s enemydummy5 matches 11.. run scoreboard players set @s enemydummy5 1

execute if score @s enemydummy5 matches 1..5 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 113}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy5 matches 6..10 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 114}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a