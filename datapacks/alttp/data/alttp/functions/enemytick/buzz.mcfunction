#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=buzzsf] if score @s enemylink = @e[type=armor_stand,tag=buzz,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death
tp @s @e[type=silverfish,tag=link_b,limit=1]

#ATTACK
execute if entity @p[distance=..6] run team leave @e[type=silverfish,tag=link_b]
execute unless entity @p[distance=..6] run team join passive @e[type=silverfish,tag=link_b]

#BREAKS
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 100..129 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {NoAI:1b}
execute if score @s enemydummy matches 130.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {NoAI:0b}

execute if score @s enemydummy matches 130.. store result score result rand run random value 1..3
execute if score @s enemydummy matches 130.. if score result rand matches 1..2 run playsound alttp.rat weather @a[distance=..10] ~ ~ ~ 1 1
execute if score @s enemydummy matches 130.. run scoreboard players set @s enemydummy 0

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a