#1=inwater 2=onland

#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=zorazo] if score @s enemylink = @e[type=armor_stand,tag=zora,limit=1,sort=nearest] enemylink run tag @s add link_b

#SCORE SETUP
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 1

#IN WATER LINKING
execute if score @s enemydummy matches 1 run tp @e[type=zombie,tag=link_b] ~ ~ ~

#CHANCE TO GET OUT WHEN PLAYER IS NEAR
scoreboard players add @s dummy 1
execute if score @s dummy matches 61.. run scoreboard players set @s dummy 1
execute if score @s dummy matches 10 if entity @p[distance=..10] store result score result rand run random value 1..20
execute if score @s dummy matches 10 if entity @p[distance=..10] if score result rand matches 7 run scoreboard players set @s enemydummy 2

#SHOOTING WHEN PLAYER NEARBY
execute if score @s dummy matches 50 if score @s enemydummy matches 1 if entity @p[distance=..12] run function alttp:zora_shoot

#ON LAND LINKING
execute if score @s enemydummy matches 2 run tp @s @e[type=zombie,tag=link_b,limit=1]
execute if score @s enemydummy matches 2 as @e[type=zombie,tag=link_b] at @s if block ~ ~ ~ water run effect give @s speed 1 10 true
execute if score @s enemydummy matches 2 as @e[type=zombie,tag=link_b] at @s unless block ~ ~ ~ water run effect clear @s speed

#HIDING IN WATER IF NO PLAYER IS NEARBY
execute if score @s enemydummy matches 1 if entity @p[distance=..12] run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}]}
execute if score @s enemydummy matches 1 unless entity @p[distance=..12] run data merge entity @s {HandItems:[{},{}]}

#DEATH
execute unless entity @e[type=zombie,tag=link_b] run kill @e[type=armor_stand,tag=zoraball]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a