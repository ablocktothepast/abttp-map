#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=buzzblobsf] if score @s enemylink = @e[type=item_display,tag=buzzblob,limit=1,sort=nearest] enemylink run tag @s add link_b

#ELECTROCUTION ANIMATION
#0 - Idle, 1 - Electrocute

execute if score @s enemydummy matches 3 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:29}}}
execute if score @s enemydummy matches 6 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:30}}}
execute if score @s enemydummy matches 9 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:31}}}
execute if score @s enemydummy matches 14 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:30}}}
execute if score @s enemydummy matches 17 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:29}}}
execute if score @s enemydummy matches 18 run scoreboard players set @s enemydummy 0
execute if score @s enemydummy matches 1.. run scoreboard players add @s enemydummy 1

#LINKING WITH SILVERFISH AI
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute at @s run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#WALKING AND ANIMATION
scoreboard players set @s bb_walking 0
execute as @e[type=silverfish,tag=link_b] run execute unless entity @s[nbt={Motion:[0.0,0.0,0.0]}] run scoreboard players set @e[type=item_display,tag=link_a] bb_walking 1

execute if score @s bb_walking matches 0 if score @s enemydummy matches 0 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:26}},{}]}
execute if score @s bb_walking matches 1 if score @s enemydummy matches 0 run scoreboard players add @s bb_walk_t 1

execute if score @s bb_walking matches 1 if score @s enemydummy matches 0 if score @s bb_walk_t matches 1..3 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:27}}}

execute if score @s bb_walking matches 1 if score @s enemydummy matches 0 if score @s bb_walk_t matches 7..8 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:26}}}

execute if score @s bb_walking matches 1 if score @s enemydummy matches 0 if score @s bb_walk_t matches 9..11 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:28}}}

execute if score @s bb_walking matches 1 if score @s enemydummy matches 0 if score @s bb_walk_t matches 12..13 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:26}}}

execute if score @s bb_walking matches 1 if score @s enemydummy matches 0 if score @s bb_walk_t matches 14 run scoreboard players set @s bb_walk_t 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run scoreboard players set @p[distance=..3] set_damage 4
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run playsound alttp.shock weather @p ~ ~ ~ 1 1
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run scoreboard players set @s enemydummy 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a