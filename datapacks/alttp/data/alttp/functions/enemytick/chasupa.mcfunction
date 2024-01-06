#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=chasupasf] if score @s enemylink = @e[type=armor_stand,tag=chasupa,limit=1,sort=nearest] enemylink run tag @s add link_b

#dummy = cooldown
#enemydummy = active state

execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0
execute unless score @s dummy matches -2147483648..2147483647 run scoreboard players set @s dummy 0

execute if score @s enemydummy matches 0 if score @s dummy matches 0 if entity @p[distance=..4] run scoreboard players set @s enemydummy 1

#MOVEMENT
execute if score @s enemydummy matches 1.. run scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 160 run scoreboard players set @s dummy 100
execute if score @s enemydummy matches 160 run scoreboard players set @s enemydummy 0
execute if score @s dummy matches 1.. run scoreboard players remove @s dummy 1

execute if score @s enemydummy matches 1.. store result score result rand run random value 1..6

execute if score @s enemydummy matches 2 run playsound alttp.keese weather @a[distance=..10] ~ ~ ~ 1 1

execute if score result rand matches 1 if score @s enemydummy matches 1.. facing entity @p feet rotated ~ ~18 if block ^ ^ ^0.5 #gothrough run tp @s ^ ^ ^0.28 ~ ~
execute if score result rand matches 2 if score @s enemydummy matches 1.. facing entity @p feet rotated ~ ~ if block ^ ^ ^0.5 #gothrough run tp @s ^ ^ ^0.28 ~ ~
execute if score result rand matches 3 if score @s enemydummy matches 1.. facing entity @p feet rotated ~ ~-18 if block ^ ^ ^0.5 #gothrough run tp @s ^ ^ ^0.28 ~ ~
execute if score result rand matches 4 if score @s enemydummy matches 1.. facing entity @p eyes rotated ~ ~18 if block ^ ^ ^0.5 #gothrough run tp @s ^ ^ ^0.28 ~ ~
execute if score result rand matches 5 if score @s enemydummy matches 1.. facing entity @p eyes rotated ~ ~ if block ^ ^ ^0.5 #gothrough run tp @s ^ ^ ^0.28 ~ ~
execute if score result rand matches 6 if score @s enemydummy matches 1.. facing entity @p eyes rotated ~ ~-18 if block ^ ^ ^0.5 #gothrough run tp @s ^ ^ ^0.28 ~ ~

execute if score @s enemydummy matches 0 if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute if score @s enemydummy matches 0 if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~

#DAMAGING
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 5
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 25

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#LINKING
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death
tp @e[type=silverfish,tag=link_b] ~ ~ ~ ~ ~

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a