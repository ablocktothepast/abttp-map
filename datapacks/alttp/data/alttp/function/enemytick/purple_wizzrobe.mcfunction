#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=purple_wizzrobezo] if score @s enemylink = @e[type=armor_stand,tag=purple_wizzrobe,limit=1,sort=nearest] enemylink run tag @s add link_b
execute as @e[type=silverfish,tag=purple_wizzrobesf] if score @s enemylink = @e[type=armor_stand,tag=purple_wizzrobe,limit=1,sort=nearest] enemylink run tag @s add link_c

#NO COLLISION OR SMT
team join no_collide @s
team join no_collide @e[type=zombie,tag=link_b]
team join no_collide @e[type=silverfish,tag=link_c]

#LINKY
scoreboard players add @s enemydummy5 1
execute if score @s enemydummy5 matches 41.. run scoreboard players set @s enemydummy5 1

execute if score @s enemydummy5 matches 1 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1 ~ ~ ~
execute if score @s enemydummy5 matches 2 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.1 ~ ~ ~
execute if score @s enemydummy5 matches 3 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.2 ~ ~ ~
execute if score @s enemydummy5 matches 4 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.3 ~ ~ ~
execute if score @s enemydummy5 matches 5 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.35 ~ ~ ~
execute if score @s enemydummy5 matches 6 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.4 ~ ~ ~
execute if score @s enemydummy5 matches 7 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.425 ~ ~ ~
execute if score @s enemydummy5 matches 8 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.45 ~ ~ ~
execute if score @s enemydummy5 matches 9 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.475 ~ ~ ~
execute if score @s enemydummy5 matches 10 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.5 ~ ~ ~

execute if score @s enemydummy5 matches 11 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.5 ~ ~ ~
execute if score @s enemydummy5 matches 12 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.475 ~ ~ ~
execute if score @s enemydummy5 matches 13 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.45 ~ ~ ~
execute if score @s enemydummy5 matches 14 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.425 ~ ~ ~
execute if score @s enemydummy5 matches 15 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.4 ~ ~ ~
execute if score @s enemydummy5 matches 16 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.35 ~ ~ ~
execute if score @s enemydummy5 matches 17 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.3 ~ ~ ~
execute if score @s enemydummy5 matches 18 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.2 ~ ~ ~
execute if score @s enemydummy5 matches 19 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1.1 ~ ~ ~
execute if score @s enemydummy5 matches 20 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1 ~ ~ ~

execute if score @s enemydummy5 matches 21 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1 ~ ~ ~
execute if score @s enemydummy5 matches 22 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.9 ~ ~ ~
execute if score @s enemydummy5 matches 23 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.8 ~ ~ ~
execute if score @s enemydummy5 matches 24 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.7 ~ ~ ~
execute if score @s enemydummy5 matches 25 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.65 ~ ~ ~
execute if score @s enemydummy5 matches 26 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.6 ~ ~ ~
execute if score @s enemydummy5 matches 27 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.575 ~ ~ ~
execute if score @s enemydummy5 matches 28 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.55 ~ ~ ~
execute if score @s enemydummy5 matches 29 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.525 ~ ~ ~
execute if score @s enemydummy5 matches 30 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.5 ~ ~ ~

execute if score @s enemydummy5 matches 31 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.5 ~ ~ ~
execute if score @s enemydummy5 matches 32 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.525 ~ ~ ~
execute if score @s enemydummy5 matches 33 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.55 ~ ~ ~
execute if score @s enemydummy5 matches 34 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.575 ~ ~ ~
execute if score @s enemydummy5 matches 35 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.6 ~ ~ ~
execute if score @s enemydummy5 matches 36 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.65 ~ ~ ~
execute if score @s enemydummy5 matches 37 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.7 ~ ~ ~
execute if score @s enemydummy5 matches 38 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.8 ~ ~ ~
execute if score @s enemydummy5 matches 39 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~0.9 ~ ~ ~
execute if score @s enemydummy5 matches 40 as @e[type=silverfish,tag=link_c] at @s unless entity @s[tag=icerodfrozen] run tp @e[type=armor_stand,tag=link_a] ~ ~1 ~ ~ ~

execute at @s run tp @e[type=zombie,tag=link_b] ~ ~ ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run kill @e[type=silverfish,tag=link_c]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#SHOOTY SHOOTY
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0
execute if score @s enemydummy matches 0 if entity @p[distance=..10] run function alttp:wizzrobe_shoot

execute if score @s enemydummy matches 1.. unless entity @s[tag=icerodfrozen] run scoreboard players remove @s enemydummy 1

#WALKING ANIMATION
execute store result score @s enemydummy9 run data get entity @e[type=silverfish,tag=link_c,limit=1] Motion[0] 100
execute store result score @s enemydummy10 run data get entity @e[type=silverfish,tag=link_c,limit=1] Motion[2] 100
scoreboard players operation @s enemydummy9 += @s enemydummy10

execute if score @s enemydummy9 matches 0 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 135}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

execute unless score @s enemydummy9 matches 0 run scoreboard players add @s enemydummy8 1
execute if score @s enemydummy8 matches 11.. run scoreboard players set @s enemydummy8 1
execute unless score @s enemydummy9 matches 0 if score @s enemydummy8 matches 1..5 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 136}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute unless score @s enemydummy9 matches 0 if score @s enemydummy8 matches 6..10 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 137}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#SHOOTING ANIMATION
execute if score @s enemydummy matches ..1 if entity @p[distance=..10] run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 140}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 2..5 if entity @p[distance=..10] run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 139}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 6..9 if entity @p[distance=..10] run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 138}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @e[type=silverfish] remove link_c
tag @s remove link_a