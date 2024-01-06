#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=zirrosf] if score @s enemylink = @e[type=armor_stand,tag=zirro,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
execute store result score result rand run random value 1..3
execute if score result rand matches 1..2 at @s run tp @s ~ ~ ~ facing entity @p eyes
execute if score result rand matches 3 at @s run tp @s ~ ~ ~ facing entity @p feet

execute store result score result rand run random value 1..3
execute if score @s enemydummy matches 1.. run scoreboard players set result rand 4
execute at @s if score result rand matches 1 run tp @s ~ ~ ~ ~-6 ~
execute at @s if score result rand matches 2 run tp @s ~ ~ ~ ~ ~
execute at @s if score result rand matches 3 run tp @s ~ ~ ~ ~6 ~

execute at @s if score @s enemydummy matches 1 store result score result rand run random value 1..2
execute at @s if score @s enemydummy matches 1 store result score @s enemydummy2 run scoreboard players get result rand

execute at @s if score @s enemydummy matches 1.. if score @s enemydummy2 matches 1 run tp @s ~ ~ ~ ~45 ~
execute at @s if score @s enemydummy matches 1.. if score @s enemydummy2 matches 2 run tp @s ~ ~ ~ ~-45 ~
execute at @s if score @s enemydummy matches 1.. run scoreboard players add @s enemydummy 1
execute at @s if score @s enemydummy matches 25.. run scoreboard players set @s enemydummy 0

execute at @s if block ^ ^ ^0.15 #gothrough run tp @s ^ ^ ^0.15
execute if score @s enemydummy matches 1.. at @s if block ^ ^ ^0.1 #gothrough run tp @s ^ ^ ^0.1

execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run scoreboard players set @s enemydummy 1

#DAMAGE
execute unless score @s enemydummy3 matches 1.. at @s run scoreboard players set @p[distance=..0.75] set_damage 5
execute unless score @s enemydummy3 matches 1.. at @s if entity @p[distance=..0.75] run scoreboard players set @s enemydummy3 30
execute unless score @s enemydummy3 matches 1.. at @s positioned ~ ~-1 ~ run scoreboard players set @p[distance=..0.75] set_damage 5
execute unless score @s enemydummy3 matches 1.. at @s positioned ~ ~-1 ~ if entity @p[distance=..0.75] run scoreboard players set @s enemydummy3 30

execute if score @s enemydummy3 matches 1.. run scoreboard players remove @s enemydummy3 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a