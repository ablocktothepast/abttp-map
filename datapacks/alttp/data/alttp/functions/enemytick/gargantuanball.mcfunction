execute if entity @s[tag=1] run tp @s ~ ~ ~0.2 0 0
execute if entity @s[tag=2] run tp @s ~ ~ ~-0.2 180 0
execute if entity @s[tag=3] run tp @s ~0.2 ~ ~ -90 0
execute if entity @s[tag=4] run tp @s ~-0.2 ~ ~ 90 0

execute unless block ^-0.5 ^ ^ #gothrough run kill @e[type=item_display,tag=gargantuanballdi,limit=1,sort=nearest]
execute unless block ^-0.5 ^ ^ #gothrough run playsound minecraft:alttp.break weather @p ~ ~ ~ 0.7 1
execute unless block ^-0.5 ^ ^ #gothrough run particle block coal_block ~ ~ ~ 0.5 0.4 0.5 0.1 25 force
execute unless block ^-0.5 ^ ^ #gothrough run kill @s
execute unless block ^0.5 ^ ^ #gothrough run kill @e[type=item_display,tag=gargantuanballdi,limit=1,sort=nearest]
execute unless block ^0.5 ^ ^ #gothrough run playsound minecraft:alttp.break weather @p ~ ~ ~ 0.7 1
execute unless block ^0.5 ^ ^ #gothrough run particle block coal_block ~ ~ ~ 0.5 0.4 0.5 0.1 25 force
execute unless block ^0.5 ^ ^ #gothrough run kill @s
execute unless block ^-0.5 ^-1 ^ #gothrough run kill @e[type=item_display,tag=gargantuanballdi,limit=1,sort=nearest]
execute unless block ^-0.5 ^-1 ^ #gothrough run playsound minecraft:alttp.break weather @p ~ ~ ~ 0.7 1
execute unless block ^-0.5 ^-1 ^ #gothrough run particle block coal_block ~ ~ ~ 0.5 0.4 0.5 0.1 25 force
execute unless block ^-0.5 ^-1 ^ #gothrough run kill @s
execute unless block ^0.5 ^-1 ^ #gothrough run kill @e[type=item_display,tag=gargantuanballdi,limit=1,sort=nearest]
execute unless block ^0.5 ^-1 ^ #gothrough run playsound minecraft:alttp.break weather @p ~ ~ ~ 0.7 1
execute unless block ^0.5 ^-1 ^ #gothrough run particle block coal_block ~ ~ ~ 0.5 0.4 0.5 0.1 25 force
execute unless block ^0.5 ^-1 ^ #gothrough run kill @s

execute at @s if block ^-0.5 ^-1.125 ^ #gothrough if block ^0.5 ^-1.125 ^ #gothrough run tp @s ~ ~-0.1 ~
execute at @s if entity @e[type=armor_stand,tag=gargantuanball,distance=0.01..1] run tag @s add collide

execute at @s if entity @s[tag=collide] run kill @e[type=armor_stand,tag=gargantuanball,limit=1,sort=nearest,distance=0.01..]
execute at @s if entity @s[tag=collide] run kill @e[type=item_display,tag=gargantuanballdi,limit=1,sort=nearest]
execute at @s if entity @s[tag=collide] run playsound minecraft:alttp.break weather @p ~ ~ ~ 0.7 1
execute at @s if entity @s[tag=collide] run particle block coal_block ~ ~ ~ 0.5 0.4 0.5 0.1 25 force
execute at @s if entity @s[tag=collide] run kill @e[type=item_display,tag=gargantuanballdi,limit=1,sort=nearest]
execute at @s if entity @s[tag=collide] run kill @s

execute positioned ~ ~-1.125 ~ if entity @p[distance=..0.5] run tag @s add playercollide
execute positioned ~ ~-1.125 ~ run scoreboard players set @p[distance=..0.5] set_damage 4

execute at @s if entity @s[tag=playercollide] run particle block coal_block ~ ~ ~ 0.5 0.4 0.5 0.1 25 force
execute at @s if entity @s[tag=playercollide] run playsound minecraft:alttp.break weather @p ~ ~ ~ 0.7 1
execute at @s if entity @s[tag=playercollide] run kill @e[type=item_display,tag=gargantuanballdi,limit=1,sort=nearest]
execute at @s if entity @s[tag=playercollide] run kill @s

#SFX
scoreboard players add @s enemydummy3 1
execute if score @s enemydummy3 matches 30.. run playsound alttp.bigmove weather @p ~ ~ ~ 1 1
execute if score @s enemydummy3 matches 30.. run scoreboard players set @s enemydummy3 0

##Roll that ball
scoreboard players add @s enemydummy 20
execute store result entity @e[type=item_display,tag=gargantuanballdi,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get @s enemydummy
execute store result entity @e[type=item_display,tag=gargantuanballdi,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]