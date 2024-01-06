#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=ropasf] if score @s enemylink = @e[type=armor_stand,tag=ropa,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] ~ ~ ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 1 facing entity @p eyes unless entity @s[tag=icerodfrozen] run tp @s ~ ~ ~ ~ 0

execute at @s if score @s enemydummy matches 1.. if block ^ ^ ^0.2 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.2

execute at @s if score @s enemydummy matches 1 if block ^ ^0.16 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.16 ^
execute at @s if score @s enemydummy matches 2 if block ^ ^0.14 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.14 ^
execute at @s if score @s enemydummy matches 3 if block ^ ^0.12 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.12 ^
execute at @s if score @s enemydummy matches 4 if block ^ ^0.1 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.1 ^
execute at @s if score @s enemydummy matches 5 if block ^ ^0.1 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.1 ^
execute at @s if score @s enemydummy matches 6 if block ^ ^0.09 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.09 ^
execute at @s if score @s enemydummy matches 7 if block ^ ^0.08 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.08 ^

execute at @s if score @s enemydummy matches 8 if block ^ ^-0.08 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.08 ^
execute at @s if score @s enemydummy matches 9 if block ^ ^-0.09 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.09 ^
execute at @s if score @s enemydummy matches 10 if block ^ ^-0.1 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.1 ^
execute at @s if score @s enemydummy matches 11 if block ^ ^-0.1 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.1 ^
execute at @s if score @s enemydummy matches 12 if block ^ ^-0.12 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.12 ^
execute at @s if score @s enemydummy matches 13 if block ^ ^-0.14 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.14 ^
execute at @s if score @s enemydummy matches 14 if block ^ ^-0.16 ^ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.16 ^

execute at @s if score @s enemydummy matches 15.. if block ~ ~-0.5 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.5 ~
execute at @s if score @s enemydummy matches 15.. if block ~ ~-0.5 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.2 ~
execute at @s if score @s enemydummy matches 15.. if block ~ ~-0.5 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.1 ~
execute at @s if score @s enemydummy matches 15.. if block ~ ~-0.5 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.1 ~
execute at @s if score @s enemydummy matches 15.. if block ~ ~-0.5 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.05 ~

execute at @s if score @s enemydummy matches 17.. run playsound block.slime_block.fall weather @p ~ ~ ~ 0.7 1
execute at @s if score @s enemydummy matches 17.. run particle block sea_pickle ~ ~0.25 ~ 0.25 0.25 0.25 0.1 15 force
execute at @s if score @s enemydummy matches 17.. run scoreboard players set @s enemydummy 0

#ME WHEN DAMAGE
execute at @s unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..0.75] set_damage 6
execute unless score @s enemydummy2 matches 1.. at @s if entity @p[distance=..0.75] run scoreboard players set @s enemydummy2 30
execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

##Models because yes
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy3 1
execute if score @s enemydummy3 matches 9.. run scoreboard players set @s enemydummy3 1
execute if score @s enemydummy3 matches 1..2 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:275}},{}]}
execute if score @s enemydummy3 matches 3..4 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:276}},{}]}
execute if score @s enemydummy3 matches 5..6 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:277}},{}]}
execute if score @s enemydummy3 matches 7..8 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:278}},{}]}

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a