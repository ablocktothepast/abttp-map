#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=hokkubokkuzo] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add link_b
execute as @e[type=armor_stand,tag=hokkubokku1] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add body1
execute as @e[type=armor_stand,tag=hokkubokku2] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add body2
execute as @e[type=armor_stand,tag=hokkubokku3] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add body3
execute as @e[type=armor_stand,tag=hokkubokku4] if score @s enemylink = @e[type=armor_stand,limit=1,sort=nearest] enemylink run tag @s add body4

#LINKY
execute if score @s enemydummy matches 2.. run tp @e[type=zombie,tag=link_b] @s
execute if score @s enemydummy matches 1 run tp @s @e[type=zombie,tag=link_b,limit=1]
execute if score @s enemydummy matches 1 run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:0b}
execute if score @s enemydummy matches 1 if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run kill @e[type=armor_stand,tag=body4]
execute if score @s enemydummy matches 1 if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#SEGMENTING
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 4
execute if score @s enemydummy matches 2.. run data merge entity @e[type=zombie,tag=link_b,limit=1] {Health:999f}

execute if score @s enemydummy matches 4 run tp @e[type=armor_stand,tag=body1] ~ ~ ~ ~ ~
execute if score @s enemydummy matches 4 run tp @e[type=armor_stand,tag=body2] ~ ~0.8 ~ ~ ~
execute if score @s enemydummy matches 4 run tp @e[type=armor_stand,tag=body3] ~ ~1.6 ~ ~ ~
execute if score @s enemydummy matches 4 run tp @e[type=armor_stand,tag=body4] ~ ~2.4 ~ ~ ~

execute if score @s enemydummy matches 3 run tp @e[type=armor_stand,tag=body2] ~ ~ ~ ~ ~
execute if score @s enemydummy matches 3 run tp @e[type=armor_stand,tag=body3] ~ ~0.8 ~ ~ ~
execute if score @s enemydummy matches 3 run tp @e[type=armor_stand,tag=body4] ~ ~1.6 ~ ~ ~

execute if score @s enemydummy matches 2 run tp @e[type=armor_stand,tag=body3] ~ ~ ~ ~ ~
execute if score @s enemydummy matches 2 run tp @e[type=armor_stand,tag=body4] ~ ~0.8 ~ ~ ~

execute if score @s enemydummy matches 1 run tp @e[type=armor_stand,tag=body4] ~ ~ ~ ~ ~

#MOVEMENT
scoreboard players add @s enemydummy2 1

execute if score @s enemydummy matches 2.. at @s if score @s enemydummy2 matches 1 facing entity @p eyes run tp @s ~ ~ ~ ~ 0

execute if score @s enemydummy matches 2.. if block ^ ^ ^0.15 #gothrough if score @s enemydummy2 matches 2..19 run tp @s ^ ^ ^0.15

execute if score @s enemydummy matches 2.. at @s if block ^ ^0.3 ^ #gothrough if score @s enemydummy2 matches 2 run tp @s ^ ^0.3 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^0.25 ^ #gothrough if score @s enemydummy2 matches 3 run tp @s ^ ^0.25 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^0.2 ^ #gothrough if score @s enemydummy2 matches 4 run tp @s ^ ^0.2 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^0.15 ^ #gothrough if score @s enemydummy2 matches 5 run tp @s ^ ^0.15 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^0.15 ^ #gothrough if score @s enemydummy2 matches 6 run tp @s ^ ^0.15 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^0.1 ^ #gothrough if score @s enemydummy2 matches 7 run tp @s ^ ^0.1 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^0.1 ^ #gothrough if score @s enemydummy2 matches 8 run tp @s ^ ^0.1 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^0.1 ^ #gothrough if score @s enemydummy2 matches 9 run tp @s ^ ^0.1 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^0.1 ^ #gothrough if score @s enemydummy2 matches 10 run tp @s ^ ^0.1 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^-0.1 ^ #gothrough if score @s enemydummy2 matches 11 run tp @s ^ ^-0.1 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^-0.1 ^ #gothrough if score @s enemydummy2 matches 12 run tp @s ^ ^-0.1 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^-0.1 ^ #gothrough if score @s enemydummy2 matches 13 run tp @s ^ ^-0.1 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^-0.1 ^ #gothrough if score @s enemydummy2 matches 14 run tp @s ^ ^-0.1 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^-0.15 ^ #gothrough if score @s enemydummy2 matches 15 run tp @s ^ ^-0.15 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^-0.15 ^ #gothrough if score @s enemydummy2 matches 16 run tp @s ^ ^-0.15 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^-0.2 ^ #gothrough if score @s enemydummy2 matches 17 run tp @s ^ ^-0.2 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^-0.25 ^ #gothrough if score @s enemydummy2 matches 18 run tp @s ^ ^-0.25 ^
execute if score @s enemydummy matches 2.. at @s if block ^ ^-0.3 ^ #gothrough if score @s enemydummy2 matches 19 run tp @s ^ ^-0.3 ^

execute if score @s enemydummy2 matches 30.. run scoreboard players set @s enemydummy2 0

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force
execute if score @s enemydummy matches 2.. if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run function alttp:hokkubokku_hit

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @e[type=armor_stand] remove body1
tag @e[type=armor_stand] remove body2
tag @e[type=armor_stand] remove body3
tag @s remove link_a