#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=red_tektitesf] if score @s enemylink = @e[type=armor_stand,tag=red_tektite,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] ~ ~0.4 ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
#2/5 chance of jumping slightly away from the player, not at them to kinda jinx them or smt
execute unless entity @s[tag=icerodfrozen] run scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 1 store result score result rand run random value 1..5
execute if score @s enemydummy matches 1 run tp @s ~ ~ ~ facing entity @p eyes
execute at @s if score @s enemydummy matches 1 run tp @s ~ ~ ~ ~ 0
execute at @s if score @s enemydummy matches 1 run playsound alttp.bounce weather @p ~ ~ ~ 1 1
execute at @s if score @s enemydummy matches 1 if score result rand matches 4 run tp @s ~ ~ ~ ~45 0
execute at @s if score @s enemydummy matches 1 if score result rand matches 5 run tp @s ~ ~ ~ ~-45 0

execute at @s if block ^ ^0.22 ^ #gothrough if score @s enemydummy matches 1..3 unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.22 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 1..3 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.3
execute at @s if block ^ ^0.18 ^ #gothrough if score @s enemydummy matches 4..5 unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.18 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 4..5 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.3
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 6..8 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.3
execute at @s if block ^ ^0.125 ^ #gothrough if score @s enemydummy matches 6..8 unless entity @s[tag=icerodfrozen] run tp @s ^ ^0.125 ^
execute at @s if block ^ ^-0.125 ^ #gothrough if score @s enemydummy matches 9..11 unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.125 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 9..11 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.3
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 12..13 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.3
execute at @s if block ^ ^-0.18 ^ #gothrough if score @s enemydummy matches 12..13 unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.18 ^
execute at @s if block ^ ^-0.22 ^ #gothrough if score @s enemydummy matches 14..16 unless entity @s[tag=icerodfrozen] run tp @s ^ ^-0.22 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 14..16 unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.3

execute if score @s enemydummy matches 17..40 unless block ~ ~-0.01 ~ #gothrough run scoreboard players set @s enemydummy 41

execute at @s if score @s enemydummy matches 21.. if block ~ ~-0.05 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 21.. if block ~ ~-0.04 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 21.. if block ~ ~-0.03 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 21.. if block ~ ~-0.02 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 21.. if block ~ ~-0.01 ~ #gothrough unless entity @s[tag=icerodfrozen] run tp @s ~ ~-0.05 ~

execute if score @s enemydummy matches 48.. run scoreboard players set @s enemydummy 0

#MODELS
execute at @s unless block ~ ~-0.1 ~ #gothrough run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 74}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute at @s if block ~ ~-0.1 ~ #gothrough run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 75}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#DAMAGE
execute unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..0.8] set_damage 6
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..0.8] run scoreboard players set @s enemydummy2 25
execute positioned ~ ~-1.3 ~ unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..0.8] set_damage 6
execute positioned ~ ~-1.3 ~ unless score @s enemydummy2 matches 1.. if entity @p[distance=..0.8] run scoreboard players set @s enemydummy2 25

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a