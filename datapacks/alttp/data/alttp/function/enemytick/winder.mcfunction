#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=marker,tag=winder2] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_2
execute as @e[type=marker,tag=winder3] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_3
execute as @e[type=marker,tag=winder4] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_4
tag @e[type=marker,tag=winder_2] add winder_part
tag @e[type=marker,tag=winder_3] add winder_part
tag @e[type=marker,tag=winder_4] add winder_part

execute as @e[type=armor_stand,tag=winderdi1] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_di1
execute as @e[type=armor_stand,tag=winderdi2] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_di2
execute as @e[type=armor_stand,tag=winderdi3] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_di3
execute as @e[type=armor_stand,tag=winderdi4] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_di4

tag @e[type=armor_stand,tag=winder_di1] add winder_di
tag @e[type=armor_stand,tag=winder_di2] add winder_di
tag @e[type=armor_stand,tag=winder_di3] add winder_di
tag @e[type=armor_stand,tag=winder_di4] add winder_di

execute as @e[type=marker,tag=winderm1] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_m1
execute as @e[type=marker,tag=winderm2] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_m2
execute as @e[type=marker,tag=winderm3] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_m3
execute as @e[type=marker,tag=winderm4] if score @s enemylink = @e[type=marker,limit=1,sort=nearest,tag=winder] enemylink run tag @s add winder_m4

tag @e[type=marker,tag=winder_m1] add winder_m
tag @e[type=marker,tag=winder_m2] add winder_m
tag @e[type=marker,tag=winder_m3] add winder_m
tag @e[type=marker,tag=winder_m4] add winder_m

#MAIN MOVEMENT (SCORES)
execute unless score @s enemydummy matches -100.. run scoreboard players set @s enemydummy 0
execute unless score @e[type=marker,tag=winder_2,limit=1] enemydummy matches -100.. run scoreboard players set @e[type=marker,tag=winder_2,limit=1] enemydummy -8
execute unless score @e[type=marker,tag=winder_3,limit=1] enemydummy matches -100.. run scoreboard players set @e[type=marker,tag=winder_3,limit=1] enemydummy -15
execute unless score @e[type=marker,tag=winder_4,limit=1] enemydummy matches -100.. run scoreboard players set @e[type=marker,tag=winder_4,limit=1] enemydummy -22
scoreboard players add @s enemydummy 1
execute as @e[type=marker,tag=winder_part] unless entity @e[type=marker,tag=link_a,tag=icerodfrozen] run scoreboard players add @s enemydummy 1

#Main movement (doing it)
execute if score @s enemydummy matches 0.. unless entity @e[type=marker,tag=link_a,tag=icerodfrozen] run function alttp:windermove
execute as @e[type=marker,tag=winder_part] at @s if score @s enemydummy matches 0.. unless entity @e[type=marker,tag=link_a,tag=icerodfrozen] run function alttp:windermove

#DAMAGING
execute as @e[type=marker,tag=winder_part] at @s run function alttp:enemybasicdamage
function alttp:enemybasicdamage

##Speen
execute at @s run tp @e[type=marker,tag=winder_m1] ~ ~ ~
execute at @e[type=marker,tag=winder_2] run tp @e[type=marker,tag=winder_m2] ~ ~ ~
execute at @e[type=marker,tag=winder_3] run tp @e[type=marker,tag=winder_m3] ~ ~ ~
execute at @e[type=marker,tag=winder_4] run tp @e[type=marker,tag=winder_m4] ~ ~ ~

execute as @e[type=marker,tag=winder_m] at @s unless score @s enemydummy2 matches -1000.. run scoreboard players set @s enemydummy2 0
execute as @e[type=marker,tag=winder_m] at @s run scoreboard players add @s enemydummy 18
execute as @e[type=marker,tag=winder_m] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s enemydummy2
execute as @e[type=marker,tag=winder_m] at @s store result entity @s Rotation[1] float 1 run scoreboard players get @s enemydummy
execute as @e[type=marker,tag=winder_m1] at @s run tp @e[type=armor_stand,tag=winder_di1] ^ ^ ^0.25
execute as @e[type=marker,tag=winder_m2] at @s run tp @e[type=armor_stand,tag=winder_di2] ^ ^ ^0.25
execute as @e[type=marker,tag=winder_m3] at @s run tp @e[type=armor_stand,tag=winder_di3] ^ ^ ^0.25
execute as @e[type=marker,tag=winder_m4] at @s run tp @e[type=armor_stand,tag=winder_di4] ^ ^ ^0.25
execute as @e[type=armor_stand,tag=winder_di1] at @s run tp @s ~ ~0.6 ~
execute as @e[type=armor_stand,tag=winder_di2] at @s run tp @s ~ ~0.6 ~
execute as @e[type=armor_stand,tag=winder_di3] at @s run tp @s ~ ~0.6 ~
execute as @e[type=armor_stand,tag=winder_di4] at @s run tp @s ~ ~0.6 ~

##Models
execute as @e[type=armor_stand,tag=winder_di] run scoreboard players add @s enemydummy3 1
execute as @e[type=armor_stand,tag=winder_di] if score @s enemydummy3 matches 13.. run scoreboard players set @s enemydummy3 1
execute as @e[type=armor_stand,tag=winder_di] if score @s enemydummy3 matches 1..2 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 265}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute as @e[type=armor_stand,tag=winder_di] if score @s enemydummy3 matches 3..4 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 266}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute as @e[type=armor_stand,tag=winder_di] if score @s enemydummy3 matches 5..6 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 267}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute as @e[type=armor_stand,tag=winder_di] if score @s enemydummy3 matches 7..8 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 268}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute as @e[type=armor_stand,tag=winder_di] if score @s enemydummy3 matches 9..10 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 269}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute as @e[type=armor_stand,tag=winder_di] if score @s enemydummy3 matches 11..12 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 270}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=marker,tag=winder_2] run tag @s add link_init
tag @e[type=marker] remove winder_2
tag @e[type=marker] remove winder_3
tag @e[type=marker] remove winder_4
tag @e[type=marker] remove winder_part
tag @e[type=armor_stand] remove winder_di1
tag @e[type=armor_stand] remove winder_di2
tag @e[type=armor_stand] remove winder_di3
tag @e[type=armor_stand] remove winder_di4
tag @e[type=armor_stand] remove winder_di
tag @e[type=marker] remove winder_m1
tag @e[type=marker] remove winder_m2
tag @e[type=marker] remove winder_m3
tag @e[type=marker] remove winder_m4
tag @e[type=marker] remove winder_m
tag @s remove link_a