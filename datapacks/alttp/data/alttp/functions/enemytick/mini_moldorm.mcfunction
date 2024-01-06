#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=mini_moldormsf] if score @s enemylink = @e[type=armor_stand,tag=mini_moldorm,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
execute unless score @s enemydummy matches 0.. run scoreboard players set @s enemydummy -1
scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 0 store result score result rand run random value 1..10
execute if score @s enemydummy matches 0 run scoreboard players set result rand 10
execute if score @s enemydummy matches 0 store result score @s enemydummy2 run scoreboard players get result rand

execute if score @s enemydummy matches 1 store result score result rand run random value 1..5
execute if score @s enemydummy matches 1 store result score @s enemydummy3 run scoreboard players get result rand

execute if score @s enemydummy matches 1.. if score @s enemydummy3 matches 1 if block ^ ^ ^0.8 #gothrough run tp @s ^ ^ ^0.3 ~3 0
execute if score @s enemydummy matches 1.. if score @s enemydummy3 matches 2 if block ^ ^ ^0.8 #gothrough run tp @s ^ ^ ^0.3 ~-3 0
execute if score @s enemydummy matches 1.. if score @s enemydummy3 matches 3 if block ^ ^ ^0.8 #gothrough run tp @s ^ ^ ^0.3 ~6 0
execute if score @s enemydummy matches 1.. if score @s enemydummy3 matches 4 if block ^ ^ ^0.8 #gothrough run tp @s ^ ^ ^0.3 ~-6 0
execute if score @s enemydummy matches 1.. if score @s enemydummy3 matches 5 unless entity @p[distance=..5] if block ^ ^ ^0.8 #gothrough run tp @s ^ ^ ^0.3 ~ 0
execute if score @s enemydummy matches 1.. if score @s enemydummy3 matches 5 if entity @p[distance=..5] facing entity @p feet rotated ~ 0 if block ^ ^ ^0.8 #gothrough run tp @s ^ ^ ^0.3 ~ 0
execute if score @s enemydummy matches 1.. unless block ^ ^ ^0.8 #gothrough run tp @s ~ ~ ~ ~90 0

execute if score @s enemydummy >= @s enemydummy2 run scoreboard players set @s enemydummy -1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:5s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a