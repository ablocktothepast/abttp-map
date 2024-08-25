#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=yellow_stalfoszo] if score @s enemylink = @e[type=armor_stand,tag=yellow_stalfos,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

execute unless score @s enemydummy2 matches -100.. run scoreboard players set @s enemydummy2 0

#DAMAGE INDICATOR
execute if score @s enemydummy matches ..-1 if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force
execute if score @s enemydummy matches 0..100 if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] if score @s enemydummy2 matches 0 run playsound entity.skeleton.hurt weather @p ~ ~ ~ 0.5 1
execute if score @s enemydummy matches 0..100 if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] if score @s enemydummy2 matches 0 run scoreboard players set @s enemydummy2 1

#Epic movement models
execute store result score @s enemydummy8 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[0] 100
execute store result score @s enemydummy9 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[2] 100
scoreboard players set @s enemydummy7 1
execute if score @s enemydummy8 matches 0 if score @s enemydummy9 matches 0 run scoreboard players set @s enemydummy7 0

execute if score @s enemydummy7 matches 0 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 187}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy7 matches 1 run scoreboard players add @s enemydummy10 1
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 9.. run scoreboard players set @s enemydummy10 1
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 1..4 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 188}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 5..8 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 189}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#Head throwing (enemydummy=timer)
execute if score @s enemydummy2 matches ..0 unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches -13..0 run particle cloud ~ ~1.45 ~ 0 0 0 0.05 5 force
execute if score @s enemydummy matches -11..0 run particle cloud ~ ~1.45 ~ 0.15 0.15 0.15 0.05 5 force
execute if score @s enemydummy matches -9..0 run particle cloud ~ ~1.45 ~ 0.25 0.25 0.25 0.05 5 force
execute if score @s enemydummy matches -7..0 run particle cloud ~ ~1.45 ~ 0.35 0.35 0.35 0.05 5 force
execute if score @s enemydummy matches -5..0 run particle cloud ~ ~1.45 ~ 0.5 0.5 0.5 0.05 5 force

execute if score @s enemydummy matches ..-1 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 193}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

execute if score @s enemydummy matches 105..110 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 190}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 111..116 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 191}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 117..119 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 192}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 120.. run function alttp:ys_throwhead

#Effects
execute if score @s enemydummy matches 0.. run effect give @e[type=zombie,tag=link_b] resistance 600 69 true
execute if score @s enemydummy matches ..-1 run effect clear @e[type=zombie,tag=link_b] resistance
execute if score @s enemydummy matches ..-10 run effect give @e[type=zombie,tag=link_b] slowness infinite 255 true
execute unless score @s enemydummy matches ..-10 run effect clear @e[type=zombie,tag=link_b] slowness

#Pile
execute if score @s enemydummy2 matches 1.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 203}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy2 matches 1.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:1b}
execute if score @s enemydummy2 matches ..0 run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:0b}
execute if score @s enemydummy2 matches 1.. unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy2 1
execute if score @s enemydummy2 matches 60.. run playsound entity.skeleton.step weather @a
execute if score @s enemydummy2 matches 60.. run scoreboard players set @s enemydummy2 -30
execute if score @s enemydummy2 matches ..-1 run scoreboard players add @s enemydummy2 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a