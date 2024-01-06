#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=vulturesf] if score @s enemylink = @e[type=armor_stand,tag=vulture,limit=1,sort=nearest] enemylink run tag @s add link_b

#IF IN RADIUS START SWIRLING
execute unless score @s enemydummy matches 1.. if entity @p[distance=..4] run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 1 run scoreboard players add @s dummy 10
execute if score @s enemydummy matches 1 if score @s dummy matches 180 run playsound alttp.flap weather @p ~ ~ ~ 1 0.8
execute if score @s enemydummy matches 1 if score @s dummy matches 180 run scoreboard players set @s dummy -180

execute if score @s enemydummy matches 1 if score @s dummy matches 0 at @p rotated 0 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 10 at @p rotated 10 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 20 at @p rotated 20 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 30 at @p rotated 30 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 40 at @p rotated 40 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 50 at @p rotated 50 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 60 at @p rotated 60 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 70 at @p rotated 70 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 80 at @p rotated 80 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 90 at @p rotated 90 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 100 at @p rotated 100 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 110 at @p rotated 110 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 120 at @p rotated 120 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 130 at @p rotated 130 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 140 at @p rotated 140 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 150 at @p rotated 150 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 160 at @p rotated 160 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches 170 at @p rotated 170 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -180 at @p rotated -180 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -170 at @p rotated -170 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -160 at @p rotated -160 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -150 at @p rotated -150 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -140 at @p rotated -140 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -130 at @p rotated -130 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -120 at @p rotated -120 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -110 at @p rotated -110 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -100 at @p rotated -100 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -90 at @p rotated -90 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -80 at @p rotated -80 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -70 at @p rotated -70 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -60 at @p rotated -60 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -50 at @p rotated -50 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -40 at @p rotated -40 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -30 at @p rotated -30 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -20 at @p rotated -20 0 run tp @s ^ ^1 ^3
execute if score @s enemydummy matches 1 if score @s dummy matches -10 at @p rotated -10 0 run tp @s ^ ^1 ^3

execute if score @s enemydummy matches 1 run scoreboard players add @s enemydummy2 1
execute if score @s enemydummy matches 1 run scoreboard players operation @p vulturemove += @p vulturemove2
execute if score @s enemydummy matches 1 unless score @p vulturemove matches 0 run scoreboard players set @s enemydummy2 0
execute if score @s enemydummy matches 1 run scoreboard players set @p vulturemove 0
execute if score @s enemydummy matches 1 run scoreboard players set @p vulturemove2 0
execute if score @s enemydummy matches 1 if score @s enemydummy2 matches 60.. run playsound alttp.zol weather @p ~ ~ ~ 1 0.7
execute if score @s enemydummy matches 1 if score @s enemydummy2 matches 60.. run scoreboard players set @s enemydummy 2

execute at @s if score @s enemydummy matches 2 run tp @s ~ ~ ~ facing entity @p eyes
execute at @s if score @s enemydummy matches 2 run scoreboard players set @s enemydummy2 0
execute at @s if score @s enemydummy matches 2 run tp @s ^ ^ ^0.4
execute at @s if score @s enemydummy matches 2 positioned ~ ~-1.3 ~ if entity @p[distance=..0.4] run scoreboard players set @p set_damage 6
execute at @s if score @s enemydummy matches 2 positioned ~ ~-1.3 ~ if entity @p[distance=..0.4] run scoreboard players set @s enemydummy 0

#LINK
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a