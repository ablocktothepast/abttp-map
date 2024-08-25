#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=babususf] if score @s enemylink = @e[type=armor_stand,tag=babusu,limit=1,sort=nearest] enemylink run tag @s add link_b
execute as @e[type=marker,tag=babusuhole] if score @s babusulink = @e[type=armor_stand,tag=babusu,limit=1,sort=nearest] babusulink run tag @s add link_holes

#SORT HOLES
tag @e[type=marker,tag=link_holes,limit=1,sort=arbitrary] add link_hole1
tag @e[type=marker,tag=link_holes,limit=1,tag=!link_hole1] add link_hole2

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#STATES (0=HIDDEN 1=CRAWLING)
execute unless score @s enemydummy matches 0.. run scoreboard players set @s enemydummy 0
execute unless score @s enemydummy2 matches 0.. run scoreboard players set @s enemydummy2 0
execute unless score @s enemydummy3 matches 0.. run scoreboard players set @s enemydummy3 1
execute unless score @s enemydummy4 matches 0.. run scoreboard players set @s enemydummy4 80

#HIDDEN STATE
execute if score @s enemydummy matches 0 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute if score @s enemydummy matches 0 run data merge entity @s {HandItems: [{count: 1, id: "minecraft:activator_rail"}, {}]}

execute if score @s enemydummy matches 0 run scoreboard players add @s enemydummy2 1
execute if score @s enemydummy matches 0 if score @s enemydummy2 >= @s enemydummy4 run scoreboard players add @s enemydummy3 1
execute if score @s enemydummy matches 0 if score @s enemydummy2 >= @s enemydummy4 if score @s enemydummy3 matches 3.. run scoreboard players set @s enemydummy3 1
execute if score @s enemydummy matches 0 if score @s enemydummy2 >= @s enemydummy4 run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 >= @s enemydummy4 run tag @s add reset

execute if entity @s[tag=reset] store result score result rand run random value 1..120
execute if entity @s[tag=reset] store result score @s enemydummy4 run scoreboard players get result rand
execute if entity @s[tag=reset] run scoreboard players set @s enemydummy2 0
execute if entity @s[tag=reset] run tag @s remove reset

#CRAWLING STATE
execute if score @s enemydummy matches 1 if block ~ ~ ~ #gothrough run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 32}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 1 if block ~ ~ ~ #gothrough run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}
execute if score @s enemydummy matches 1 unless block ~ ~ ~ #gothrough run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute if score @s enemydummy matches 1 if score @s enemydummy3 matches 1 facing entity @e[type=marker,tag=link_hole1] eyes rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s enemydummy matches 1 if score @s enemydummy3 matches 2 facing entity @e[type=marker,tag=link_hole2] eyes rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~

execute if score @s enemydummy matches 1 if score @s enemydummy3 matches 1 if entity @e[type=marker,tag=link_hole1,distance=..0.5] run tp @s @e[type=marker,tag=link_hole1,limit=1]
execute if score @s enemydummy matches 1 if score @s enemydummy3 matches 1 if entity @e[type=marker,tag=link_hole1,distance=..0.5] run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 1 if score @s enemydummy3 matches 2 if entity @e[type=marker,tag=link_hole2,distance=..0.5] run tp @s @e[type=marker,tag=link_hole2,limit=1]
execute if score @s enemydummy matches 1 if score @s enemydummy3 matches 2 if entity @e[type=marker,tag=link_hole2,distance=..0.5] run scoreboard players set @s enemydummy 0

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#DAMAGING
execute unless score @s enemydummy5 matches 1.. if entity @p[distance=..0.5] run scoreboard players set @p set_damage 6
execute unless score @s enemydummy5 matches 1.. if entity @p[distance=..0.5] run scoreboard players set @s enemydummy5 30
execute if score @s enemydummy5 matches 1.. run scoreboard players remove @s enemydummy5 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @e[type=marker] remove link_holes
tag @e[type=marker] remove link_hole1
tag @e[type=marker] remove link_hole2
tag @s remove link_a