#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=dactosf] if score @s enemylink = @e[type=armor_stand,tag=dacto,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 0 if entity @p[distance=..7] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 0 at @s if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.5 ~
execute if score @s enemydummy matches 0 at @s if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute if score @s enemydummy matches 0 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute if score @s enemydummy matches 1 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}

execute if score @s enemydummy matches 1 store result score result rand run random value 1..2
execute if score @s enemydummy matches 1 if score result rand matches 1 run tp @s ~ ~ ~ facing entity @p eyes
execute if score @s enemydummy matches 1 if score result rand matches 2 run tp @s ~ ~ ~ facing entity @p feet

execute if score @s enemydummy matches 1 at @s if block ^ ^ ^0.4 #gothrough run tp @s ^ ^ ^0.25

execute if score @s enemydummy matches 1 unless entity @p[distance=..7] run scoreboard players set @s enemydummy 0

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#DAMAGING
execute unless score @s enemydummy2 matches 1.. if score @s enemydummy matches 1 run scoreboard players set @p set_damage 3
execute unless score @s enemydummy2 matches 1.. if score @s enemydummy matches 1 if entity @p[distance=..0.75] run scoreboard players set @s enemydummy2 30
execute positioned ~ ~1 ~ unless score @s enemydummy2 matches 1.. if score @s enemydummy matches 1 run scoreboard players set @p set_damage 3
execute positioned ~ ~1 ~ unless score @s enemydummy2 matches 1.. if score @s enemydummy matches 1 if entity @p[distance=..0.75] run scoreboard players set @s enemydummy2 30

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a