#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=terrorpinsf] if score @s enemylink = @e[type=armor_stand,tag=terrorpin,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#FLIPPY STATES
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 1 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute if score @s enemydummy matches 1 unless entity @s[tag=icerodfrozen] run effect clear @e[type=silverfish,tag=link_b] slowness
execute if score @s enemydummy matches 2.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}
execute if score @s enemydummy matches 2.. run effect give @e[type=silverfish,tag=link_b] slowness 1 255 true
execute if score @s enemydummy matches 2 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Motion:[0.0d,0.4d,0.0d]}
execute if score @s enemydummy matches 2.. unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 80.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Motion:[0.0d,0.2d,0.0d]}
execute if score @s enemydummy matches 80.. run scoreboard players set @s enemydummy 1

#MOVING ANIMATION
scoreboard players set @s bb_walking 0
execute as @e[type=silverfish,tag=link_b] run execute unless entity @s[nbt={Motion:[0.0,0.0,0.0]}] run scoreboard players set @e[type=armor_stand,tag=link_a] bb_walking 1
scoreboard players add @s enemydummy3 1
execute if score @s enemydummy3 matches 6.. run scoreboard players set @s enemydummy3 0
execute if score @s enemydummy matches 1 if score @s enemydummy3 matches 0..3 if score @s bb_walking matches 1 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:82}},{}]}
execute if score @s enemydummy matches 1 if score @s enemydummy3 matches 4..6 if score @s bb_walking matches 1 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:83}},{}]}
execute if score @s enemydummy matches 2.. if score @s enemydummy3 matches 0..3 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:84}},{}]}
execute if score @s enemydummy matches 2.. if score @s enemydummy3 matches 4..6 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:85}},{}]}
execute if score @s enemydummy matches 1 if score @s bb_walking matches 0 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:81}},{}]}

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a