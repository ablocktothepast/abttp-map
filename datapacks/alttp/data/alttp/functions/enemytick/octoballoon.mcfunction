#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=octoballoonsf] if score @s enemylink = @e[type=armor_stand,tag=octoballoon,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
tp @e[type=silverfish,tag=link_b] @s

#POP THE OCTOBALLOON!
execute as @e[type=silverfish,tag=link_b] store result score @s enemydummy run data get entity @s Health
execute unless score @e[type=silverfish,tag=link_b,limit=1] enemydummy matches 200 run function alttp:octopop

execute positioned ~ ~-1.3 ~ if entity @p[distance=..1] run function alttp:octopop

#MOVEMENT
tp @s ~ ~ ~ facing entity @p eyes

execute store result score result rand run random value 1..5

execute at @s if score result rand matches 1 run tp @s ^ ^ ^ ~ ~22.5
execute at @s if score result rand matches 2 run tp @s ^ ^ ^ ~ ~45
execute at @s if score result rand matches 3 run tp @s ^ ^ ^ ~ ~
execute at @s if score result rand matches 4 run tp @s ^ ^ ^ ~ ~-22.5
execute at @s if score result rand matches 5 run tp @s ^ ^ ^ ~ ~-45

execute at @s run tp @s ^ ^ ^0.1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a