#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=ocelot,tag=toppooc] if score @s enemylink = @e[type=armor_stand,tag=toppo,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
execute unless score @s enemydummy matches 2 run tp @e[type=ocelot,tag=link_b] @s
execute if score @s enemydummy matches 2 run tp @s @e[type=ocelot,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=ocelot,tag=link_b] run function alttp:enemy_death

#MOVEMENT (0=wait, 1=jump, 2=run)
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0
execute if score @s enemydummy matches 0 if entity @p[distance=..3.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 0 run scoreboard players set @s enemydummy3 0

execute if score @s enemydummy matches 1 run scoreboard players add @s enemydummy2 1
execute if score @s enemydummy matches 1 if score @s enemydummy2 matches 1 run tp @s ~ ~ ~ facing entity @p
execute if score @s enemydummy matches 1 if score @s enemydummy2 matches 1 run playsound alttp.bounce weather @p ~ ~ ~ 1 1.2
execute at @s if score @s enemydummy matches 1 if score @s enemydummy2 matches 1 run tp @s ~ ~ ~ ~ 0

execute at @s if block ^ ^0.2 ^ #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 1..3 run tp @s ^ ^0.2 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 1..3 run tp @s ^ ^ ^0.3
execute at @s if block ^ ^0.125 ^ #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 4..6 run tp @s ^ ^0.125 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 4..6 run tp @s ^ ^ ^0.3
execute at @s if block ^ ^0.1 ^ #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 7..10 run tp @s ^ ^0.1 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 7..10 run tp @s ^ ^ ^0.3
execute at @s if block ^ ^-0.1 ^ #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 11..14 run tp @s ^ ^-0.1 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 11..14 run tp @s ^ ^ ^0.3
execute at @s if block ^ ^-0.125 ^ #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 15..17 run tp @s ^ ^-0.125 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 15..17 run tp @s ^ ^ ^0.3
execute at @s if block ^ ^-0.2 ^ #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 18..20 run tp @s ^ ^-0.2 ^
execute at @s if block ^ ^ ^0.3 #gothrough if score @s enemydummy matches 1 if score @s enemydummy2 matches 18..20 run tp @s ^ ^ ^0.3

execute if score @s enemydummy matches 1 if score @s enemydummy2 matches 21.. run scoreboard players set @s enemydummy 2

execute if score @s enemydummy matches 2 run scoreboard players set @s enemydummy2 0
execute if score @s enemydummy matches 2 run scoreboard players add @s enemydummy3 1
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.04 ~ #gothrough run tp @s ~ ~-0.04 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.03 ~ #gothrough run tp @s ~ ~-0.03 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.02 ~ #gothrough run tp @s ~ ~-0.02 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~
execute at @s if score @s enemydummy matches 2 if score @s enemydummy3 matches 100.. run tag @s add rest

execute if entity @s[tag=rest] run scoreboard players set @s enemydummy 0
execute if entity @s[tag=rest] run tag @s remove rest

#DAMAGE
execute at @s unless score @s dummy matches 1.. if score @s enemydummy matches 1 run scoreboard players set @p[distance=..0.1] set_damage 7
execute at @s unless score @s dummy matches 1.. if score @s enemydummy matches 1 if entity @p[distance=..1] run scoreboard players set @s dummy 30
execute at @s positioned ~ ~-1 ~ unless score @s dummy matches 1.. if score @s enemydummy matches 1 run scoreboard players set @p[distance=..0.1] set_damage 7
execute at @s positioned ~ ~-1 ~ unless score @s dummy matches 1.. if score @s enemydummy matches 1 if entity @p[distance=..1] run scoreboard players set @s dummy 30
execute if score @s dummy matches 1.. run scoreboard players remove @s dummy 1

#DAMAGE INDICATOR
execute if entity @e[type=ocelot,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=ocelot,tag=link_b] run tag @s add link_init
tag @e[type=ocelot] remove link_b
tag @s remove link_a