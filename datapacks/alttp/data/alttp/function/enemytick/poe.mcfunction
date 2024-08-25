#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=poesf] if score @s enemylink = @e[type=armor_stand,tag=poe,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
tp @e[type=silverfish,tag=link_b] ~ ~0.3 ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1

execute if score @s enemydummy2 matches 1 run tp @s ~ ~ ~ 45 0
execute if score @s enemydummy2 matches 2 run tp @s ~ ~ ~ 135 0
execute if score @s enemydummy2 matches 3 run tp @s ~ ~ ~ -135 0
execute if score @s enemydummy2 matches 4 run tp @s ~ ~ ~ -45 0

execute at @s if block ^ ^ ^0.1 #gothrough if score @s enemydummy matches 1..5 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1
execute at @s if block ^ ^0.02 ^ #gothrough if score @s enemydummy matches 1..5 unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.02 ^
execute at @s if block ^ ^ ^0.1 #gothrough if score @s enemydummy matches 6..10 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1
execute at @s if block ^ ^0.01 ^ #gothrough if score @s enemydummy matches 6..10 unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.01 ^
execute at @s if block ^ ^ ^0.1 #gothrough if score @s enemydummy matches 11..15 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1
execute at @s if block ^ ^-0.01 ^ #gothrough if score @s enemydummy matches 11..15 unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.01 ^
execute at @s if block ^ ^ ^0.1 #gothrough if score @s enemydummy matches 16..20 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1
execute at @s if block ^ ^-0.02 ^ #gothrough if score @s enemydummy matches 16..20 unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.02 ^

execute if score @s enemydummy matches 21.. store result score result rand run random value 1..4
execute if score @s enemydummy matches 21.. store result score @s enemydummy2 run scoreboard players get result rand
execute if score @s enemydummy matches 21.. run scoreboard players set @s enemydummy 0

execute unless score @s dummy matches 1.. positioned ~ ~-1 ~ run scoreboard players set @p[distance=..0.7] set_damage 3
execute unless score @s dummy matches 1.. positioned ~ ~-1 ~ if entity @p[distance=..0.7] run scoreboard players set @s dummy 30

execute if score @s dummy matches 1.. run scoreboard players remove @s dummy 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a