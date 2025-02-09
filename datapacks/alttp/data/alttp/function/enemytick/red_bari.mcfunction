#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=red_barisf] if score @s enemylink = @e[type=armor_stand,tag=red_bari,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b,limit=1] ~ ~0.4 ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVY
execute if score @s enemydummy matches ..200 facing entity @p eyes if block ^ ^ ^0.15 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.15 ~ 0
execute if score @s enemydummy matches 200.. facing entity @p eyes rotated ~ 0 unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~ ~ 0

#ELECTROCUTY
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 240.. unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..1.5] set_damage 7
execute if score @s enemydummy matches 240.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..1.5] run playsound alttp.shock weather @p ~ ~ ~ 1 1.7
execute if score @s enemydummy matches 240.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..1.5] run scoreboard players set @s enemydummy2 20

execute positioned ~ ~-1.5 ~ if score @s enemydummy matches 240.. unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..1.5] set_damage 7
execute positioned ~ ~-1.5 ~ if score @s enemydummy matches 240.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..1.5] run playsound alttp.shock weather @p ~ ~ ~ 1 1.7
execute positioned ~ ~-1.5 ~ if score @s enemydummy matches 240.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..1.5] run scoreboard players set @s enemydummy2 20

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

execute if score @s enemydummy matches 320.. run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 240.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute unless score @s enemydummy matches 240.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}

execute if score @s enemydummy matches 240 run playsound alttp.shock weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 250 run playsound alttp.shock weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 260 run playsound alttp.shock weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 270 run playsound alttp.shock weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 280 run playsound alttp.shock weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 290 run playsound alttp.shock weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 300 run playsound alttp.shock weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 310 run playsound alttp.shock weather @p ~ ~ ~ 1 1

#DAMAGE NON ELECTRIC
execute unless score @s enemydummy matches 200.. unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..1] set_damage 2
execute unless score @s enemydummy matches 200.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 25

execute positioned ~ ~-1.5 ~ unless score @s enemydummy matches 200.. unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..1] set_damage 2
execute positioned ~ ~-1.5 ~ unless score @s enemydummy matches 200.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 25

#ANIMATIONS
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s animationtick 1
execute if score @s animationtick matches 8.. run scoreboard players set @s animationtick 0

#IDLE
execute if score @s animationtick matches 0..2 if score @s enemydummy matches ..200 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 99}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 3..5 if score @s enemydummy matches ..200 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 98}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 6..8 if score @s enemydummy matches ..200 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 100}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#CHARGING
execute if score @s enemydummy matches 201..240 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 101}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#CHARGED
execute if score @s animationtick matches 0..1 if score @s enemydummy matches 240.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 102}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 2..3 if score @s enemydummy matches 240.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 103}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 4..5 if score @s enemydummy matches 240.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 102}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 6..7 if score @s enemydummy matches 240.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 103}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a