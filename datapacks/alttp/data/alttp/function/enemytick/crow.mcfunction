#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=crowsf] if score @s enemylink = @e[type=armor_stand,tag=crow,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#ME WHEN MOVEMENT
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0
execute if score @s enemydummy matches 0 run scoreboard players set @s enemydummy2 0
execute if score @s enemydummy matches 0 run scoreboard players set @s dummy 0
execute if score @s enemydummy matches 0 if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute if score @s enemydummy matches 0 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute unless score @s enemydummy matches 1.. if entity @p[distance=..7] run tp @s ~ ~ ~ facing entity @p eyes
execute unless score @s enemydummy matches 1.. if entity @p[distance=..7] run playsound alttp.flap weather @p ~ ~ ~ 1 0.9
execute unless score @s enemydummy matches 1.. if entity @p[distance=..7] run scoreboard players set @s enemydummy 1
execute at @s if score @s enemydummy matches 1 run tp @s ^ ^ ^0.5
execute at @s if score @s enemydummy matches 1 if score @s enemydummy2 matches 60.. run scoreboard players set @s enemydummy 0
execute at @s if score @s enemydummy matches 1 run scoreboard players add @s enemydummy2 1
execute at @s if score @s enemydummy matches 1 positioned ~ ~-1.3 ~ unless score @s dummy matches 1.. run scoreboard players set @p[distance=..0.5] set_damage 5
execute at @s if score @s enemydummy matches 1 positioned ~ ~-1.3 ~ if entity @p[distance=..0.5] run scoreboard players set @s dummy 1
execute at @s if score @s enemydummy2 matches 30.. if score @s enemydummy matches 1 unless block ^ ^ ^0.3 #gothrough run scoreboard players set @s enemydummy 0
execute if score @s enemydummy matches 1 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a