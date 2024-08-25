#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=red_birisf] if score @s enemylink = @e[type=armor_stand,tag=red_biri,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b,limit=1] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVY
execute if score @s enemydummy matches ..150 facing entity @p eyes rotated ~ ~10 if block ^ ^ ^0.17 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.12 ~ 0
execute at @s if score @s enemydummy matches ..200 facing entity @p eyes rotated ~ ~10 if block ^ ^ ^0.1 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.05 ~ 0
execute if score @s enemydummy matches 150.. facing entity @p eyes rotated ~ ~10 unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~ ~ 0

#ELECTROCUTY
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 190.. unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..2] set_damage 4
execute if score @s enemydummy matches 190.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..2] run playsound alttp.shock weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 190.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..2] run scoreboard players set @s enemydummy2 20

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

execute if score @s enemydummy matches 260.. run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 190.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute unless score @s enemydummy matches 190.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}

#DAMAGE NON ELECTRIC
execute unless score @s enemydummy matches 150.. unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..1] set_damage 1
execute unless score @s enemydummy matches 150.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 20

execute positioned ~ ~-1.5 ~ unless score @s enemydummy matches 150.. unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..1] set_damage 1
execute positioned ~ ~-1.5 ~ unless score @s enemydummy matches 150.. unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 20

#ANIMATIONS
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s animationtick 1
execute if score @s animationtick matches 8.. run scoreboard players set @s animationtick 0

#IDLE
execute if score @s animationtick matches 0..2 if score @s enemydummy matches ..150 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 105}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 3..5 if score @s enemydummy matches ..150 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 104}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 6..8 if score @s enemydummy matches ..150 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 106}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#CHARGING
execute if score @s enemydummy matches 151..190 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 107}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#CHARGED
execute if score @s animationtick matches 0..1 if score @s enemydummy matches 190.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 108}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 2..3 if score @s enemydummy matches 190.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 109}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 4..5 if score @s enemydummy matches 190.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 108}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s animationtick matches 6..7 if score @s enemydummy matches 190.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 109}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a