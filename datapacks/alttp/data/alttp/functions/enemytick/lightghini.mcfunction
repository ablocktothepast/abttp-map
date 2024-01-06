#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=lightghinisf] if score @s enemylink = @e[type=armor_stand,tag=lightghini,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVIE
scoreboard players add @s enemydummy 1

execute if entity @p[distance=5..15] run scoreboard players set @s enemydummy2 3

execute if score @s enemydummy matches 1 store result score result rand run random value 1..2
execute if score @s enemydummy matches 1 store result score @s enemydummy2 run scoreboard players get result rand
execute at @s if score @s enemydummy matches 2.. if score @s enemydummy2 matches 1 run tp @s ~ ~ ~ ~4.5 ~
execute at @s if score @s enemydummy matches 2.. if score @s enemydummy2 matches 2 run tp @s ~ ~ ~ ~-4.5 ~
execute at @s if score @s enemydummy matches 2.. if score @s enemydummy2 matches 1 if block ^ ^ ^0.15 #gothrough run tp @s ^ ^ ^0.15 ~ ~
execute at @s if score @s enemydummy matches 2.. if score @s enemydummy2 matches 2 if block ^ ^ ^0.15 #gothrough run tp @s ^ ^ ^0.15 ~ ~
execute at @s if score @s enemydummy matches 2.. if score @s enemydummy2 matches 3 facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute at @s if score @s enemydummy matches 2.. if score @s enemydummy2 matches 3 if block ^ ^ ^0.2 #gothrough run tp @s ^ ^ ^0.2 ~ ~
execute if score @s enemydummy matches 21.. run scoreboard players set @s enemydummy 0

#DAMAGING
execute unless score @s enemydummy3 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 4
execute unless score @s enemydummy3 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy3 30
execute unless score @s enemydummy3 matches 1.. positioned ~ ~-1.3 ~ if entity @p[distance=..1] run scoreboard players set @p set_damage 4
execute unless score @s enemydummy3 matches 1.. positioned ~ ~-1.3 ~ if entity @p[distance=..1] run scoreboard players set @s enemydummy3 30

execute if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a