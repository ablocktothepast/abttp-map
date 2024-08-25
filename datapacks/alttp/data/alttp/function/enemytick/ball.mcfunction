execute if entity @s[tag=1] run tp @s ~ ~ ~0.2
execute if entity @s[tag=2] run tp @s ~ ~ ~-0.2
execute if entity @s[tag=3] run tp @s ~0.2 ~ ~
execute if entity @s[tag=4] run tp @s ~-0.2 ~ ~

execute at @s positioned ~ ~0.2 ~ unless block ~ ~ ~ #gothrough positioned ~ ~-0.2 ~ run particle block{block_state:"minecraft:coal_block"} ~ ~ ~ 0.5 0.4 0.5 0.1 25 force
execute at @s positioned ~ ~0.2 ~ unless block ~ ~ ~ #gothrough run playsound minecraft:alttp.break weather @p ~ ~ ~ 0.7 1
execute at @s positioned ~ ~0.2 ~ unless block ~ ~ ~ #gothrough run kill @e[type=item_display,tag=balldi,limit=1,sort=nearest]
execute at @s positioned ~ ~0.2 ~ unless block ~ ~ ~ #gothrough run kill @s

execute at @s positioned ~ ~-0.2 ~ if block ~ ~-0.1 ~ #gothrough positioned ~ ~0.2 ~ run tp @s ~ ~-0.1 ~
execute at @s if entity @e[type=armor_stand,tag=ball,distance=0.01..0.5] run tag @s add collide

execute at @s if entity @s[tag=collide] run kill @e[type=armor_stand,tag=ball,limit=1,sort=nearest,distance=0.01..0.5]
execute at @s if entity @s[tag=collide] run particle block{block_state:"minecraft:coal_block"} ~ ~ ~ 0.5 0.4 0.5 0.1 25 force
execute at @s if entity @s[tag=collide] run playsound minecraft:alttp.break weather @p ~ ~ ~ 0.7 1
execute at @s if entity @s[tag=collide] run kill @e[type=item_display,tag=balldi,limit=1,sort=nearest]
execute at @s if entity @s[tag=collide] run kill @e[type=item_display,tag=balldi,limit=1,sort=nearest]
execute at @s if entity @s[tag=collide] run kill @s

execute positioned ~ ~-0.3 ~ if entity @p[distance=..0.5] run tag @s add playercollide
execute positioned ~ ~-0.3 ~ run scoreboard players set @p[distance=..0.5] set_damage 2

execute at @s if entity @s[tag=playercollide] run particle block{block_state:"minecraft:coal_block"} ~ ~ ~ 0.5 0.4 0.5 0.1 25 force
execute at @s if entity @s[tag=playercollide] run playsound minecraft:alttp.break weather @p ~ ~ ~ 0.7 1
execute at @s if entity @s[tag=playercollide] run kill @e[type=item_display,tag=balldi,limit=1,sort=nearest]
execute at @s if entity @s[tag=playercollide] run kill @s

##Roll that ball
scoreboard players add @s enemydummy 20
execute store result entity @e[type=item_display,tag=balldi,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get @s enemydummy
execute at @s if entity @s[tag=1] run tp @s ~ ~ ~ 0 0
execute at @s if entity @s[tag=2] run tp @s ~ ~ ~ 180 0
execute at @s if entity @s[tag=3] run tp @s ~ ~ ~ -90 0
execute at @s if entity @s[tag=4] run tp @s ~ ~ ~ 90 0
execute store result entity @e[type=item_display,tag=balldi,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]