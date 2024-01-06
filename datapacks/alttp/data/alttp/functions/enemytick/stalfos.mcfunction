#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=stalfoszo] if score @s enemylink = @e[type=armor_stand,tag=stalfos,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#INVULNERABLE ON GROUND
effect give @e[type=zombie,tag=link_b] slow_falling 2 255 true
execute as @e[type=zombie,tag=link_b] at @s run effect give @s[nbt={OnGround:1b}] resistance 1 255 true
execute as @e[type=zombie,tag=link_b] at @s if entity @s[nbt={OnGround:0b}] run particle minecraft:ash ~ ~ ~ 0 0 0 1 25
execute as @e[type=zombie,tag=link_b] at @s run effect clear @s[nbt={OnGround:0b}] resistance

#Epic movement models
execute store result score @s enemydummy8 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[0] 100
execute store result score @s enemydummy9 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[2] 100
scoreboard players set @s enemydummy7 1
execute if score @s enemydummy8 matches 0 if score @s enemydummy9 matches 0 run scoreboard players set @s enemydummy7 0

execute if score @s enemydummy7 matches 0 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:172}},{}]}
execute if score @s enemydummy7 matches 1 run scoreboard players add @s enemydummy10 1
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 9.. run scoreboard players set @s enemydummy10 1
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 1..4 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:173}},{}]}
execute if score @s enemydummy7 matches 1 if score @s enemydummy10 matches 5..8 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:174}},{}]}

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s},nbt={OnGround:0b}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a