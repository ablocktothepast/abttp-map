#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=orange_stalfossf] if score @s enemylink = @e[type=armor_stand,tag=orange_stalfos,limit=1,sort=nearest] enemylink run tag @s add link_b

#MOVEMENT
execute store result score result rand run random value 1..6

execute if score result rand matches 1 facing entity @p feet rotated ~ ~15 if block ^ ^ ^0.5 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1 ~ ~
execute if score result rand matches 2 facing entity @p feet rotated ~ ~ if block ^ ^ ^0.5 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1 ~ ~
execute if score result rand matches 3 facing entity @p feet rotated ~ ~-15 if block ^ ^ ^0.5 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1 ~ ~
execute if score result rand matches 4 facing entity @p eyes rotated ~ ~15 if block ^ ^ ^0.5 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1 ~ ~
execute if score result rand matches 5 facing entity @p eyes rotated ~ ~ if block ^ ^ ^0.5 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1 ~ ~
execute if score result rand matches 6 facing entity @p eyes rotated ~ ~-15 if block ^ ^ ^0.5 #gothrough unless entity @s[tag=icerodfrozen] run tp @s ^ ^ ^0.1 ~ ~

#DAMAGING
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 7
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 20

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#Particles
particle white_ash ^ ^0.2 ^-0.2

#LINKING
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death
tp @e[type=silverfish,tag=link_b] ~ ~ ~ ~ ~

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a