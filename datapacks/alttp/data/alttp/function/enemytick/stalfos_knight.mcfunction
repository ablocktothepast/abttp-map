#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=stalfos_knightzo] if score @s enemylink = @e[type=armor_stand,tag=stalfos_knight,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death


#STATES (DEAD?)
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 0 run effect clear @e[type=zombie,tag=link_b] slowness
execute if score @s enemydummy matches 0 run tag @e[type=zombie,tag=link_b] remove bomb_weak
execute if score @s enemydummy matches 0 run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:0b,Invulnerable:0b}
execute if score @s enemydummy matches 1 run playsound entity.skeleton.hurt weather @p ~ ~ ~ 0.5 1
execute if score @s enemydummy matches 0 unless score @s enemydummy16 matches 1.. if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 1.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 208}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 1.. unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 1.. run tag @e[type=zombie,tag=link_b] add bomb_weak
execute if score @s enemydummy matches 1.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:1b,Invulnerable:1b}
execute if score @s enemydummy matches 1.. run effect give @e[type=zombie,tag=link_b] slowness 2 255 true
execute if score @s enemydummy matches 160.. run particle block{block_state:"minecraft:bone_block"} ~ ~ ~ 0.35 0.2 0.35 0 50 force
execute if score @s enemydummy matches 165.. run particle block{block_state:"minecraft:bone_block"} ~ ~ ~ 0.34 0.5 0.34 0 50 force
execute if score @s enemydummy matches 170.. run particle block{block_state:"minecraft:bone_block"} ~ ~ ~ 0.33 0.8 0.33 0 50 force
execute if score @s enemydummy matches 175.. run particle block{block_state:"minecraft:bone_block"} ~ ~ ~ 0.32 1.1 0.32 0 50 force
execute if score @s enemydummy matches 180.. run particle block{block_state:"minecraft:bone_block"} ~ ~ ~ 0.31 1.4 0.31 0 50 force
execute if score @s enemydummy matches 185.. run particle block{block_state:"minecraft:bone_block"} ~ ~ ~ 0.30 1.7 0.30 0 50 force
execute if score @s enemydummy matches 190.. run particle block{block_state:"minecraft:bone_block"} ~ ~ ~ 0.28 2 0.28 0 50 force
execute if score @s enemydummy matches 195.. run particle block{block_state:"minecraft:bone_block"} ~ ~ ~ 0.25 2.1 0.25 0 50 force
execute if score @s enemydummy matches 195.. run playsound entity.skeleton.step weather @a
execute if score @s enemydummy matches 200.. run scoreboard players set @s enemydummy 0

#Epic movement models
execute store result score @s enemydummy8 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[0] 100
execute store result score @s enemydummy9 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[2] 100
scoreboard players set @s enemydummy7 1
execute if score @s enemydummy8 matches 0 if score @s enemydummy9 matches 0 run scoreboard players set @s enemydummy7 0

execute if score @s enemydummy matches 0 if score @s enemydummy7 matches 0 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 205}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy7 matches 1 run scoreboard players add @s enemydummy10 1
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 9.. run scoreboard players set @s enemydummy10 1
execute if score @s enemydummy matches 0 if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 1..4 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 206}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 0 if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 5..8 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 207}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#Player damaging
execute unless score @s enemydummy16 matches -100.. run scoreboard players set @s enemydummy16 -1
execute if score @s enemydummy matches 0 if entity @p[distance=..3] if score @s enemydummy16 matches -1 unless entity @s[tag=icerodfrozen] run scoreboard players set @s enemydummy16 0

execute if score @s enemydummy16 matches ..-2 run scoreboard players add @s enemydummy16 1
execute if score @s enemydummy16 matches 0.. run scoreboard players add @s enemydummy16 1
execute if score @s enemydummy16 matches 0.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:1b}

execute if score @s enemydummy16 matches 1..2 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 209}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy16 matches 3..4 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 210}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy16 matches 5..6 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 211}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy16 matches 7..8 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 212}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy16 matches 8 run scoreboard players set @p set_damage 5
execute if score @s enemydummy16 matches 9..10 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 213}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy16 matches 15.. store result score result rand run random value 1..50
execute if score @s enemydummy16 matches 15.. run scoreboard players add result rand 15
execute if score @s enemydummy16 matches 15 run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:0b}
execute if score @s enemydummy16 matches 15.. run scoreboard players operation @s enemydummy16 -= result rand

#More damage when hit while attacking
execute if score @s enemydummy16 matches 0.. if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run scoreboard players set @e[type=zombie,tag=link_b] force_damage 25

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a