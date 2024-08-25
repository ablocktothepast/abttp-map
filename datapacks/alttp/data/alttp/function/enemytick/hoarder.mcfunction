#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=hoardersf] if score @s enemylink = @e[type=armor_stand,tag=hoarder,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
execute if score @s enemydummy matches 0 run tp @e[type=silverfish,tag=link_b] @s
execute if score @s enemydummy matches 1 run tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#STATES AND LOOKS
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 0 run data merge entity @s {HandItems: [{count: 1, id: "minecraft:activator_rail"}, {}]}
execute if score @s enemydummy matches 0 if entity @s[tag=h_grass] unless entity @e[type=falling_block,tag=wblock,distance=..0.1] run summon falling_block ~ ~ ~ {NoGravity:1b,BlockState:{Name:"minecraft:sweet_berry_bush",Properties:{age:"3"}},Time:-1,Tags:["wblock","hbush"]}
execute if score @s enemydummy matches 0 if entity @s[tag=h_stone] unless entity @e[type=falling_block,tag=wblock,distance=..0.1] run summon falling_block ~ ~ ~ {NoGravity:1b,BlockState:{Name:"minecraft:dead_tube_coral_block"},Time:-1,Tags:["wblock","hstone"]}

execute if score @s enemydummy matches 0 if entity @p[distance=..2] run kill @e[type=falling_block,tag=hbush,limit=1,sort=nearest]
execute if score @s enemydummy matches 0 if entity @p[distance=..2] run playsound alttp.lift weather @p ~ ~ ~ 1 1
execute if score @s enemydummy matches 0 if entity @p[distance=..2] run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 1 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 32}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a