execute if entity @s[tag=block_1] run tp @s ~ ~ ~0.2
execute if entity @s[tag=block_2] run tp @s ~-0.2 ~ ~
execute if entity @s[tag=block_3] run tp @s ~ ~ ~-0.2
execute if entity @s[tag=block_4] run tp @s ~0.2 ~ ~

execute unless score @s enemydummy matches 0.. run setblock ~ ~ ~ barrier

scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 7.. run setblock ~ ~ ~ dried_kelp_block
execute if score @s enemydummy matches 7.. if entity @s[tag=once_block] run setblock ~ ~ ~ stone
execute if score @s enemydummy matches 3.. if entity @s[tag=block_1] run setblock ~ ~ ~-1 air
execute if score @s enemydummy matches 3.. if entity @s[tag=block_2] run setblock ~1 ~ ~ air
execute if score @s enemydummy matches 3.. if entity @s[tag=block_3] run setblock ~ ~ ~1 air
execute if score @s enemydummy matches 3.. if entity @s[tag=block_4] run setblock ~-1 ~ ~ air
execute if score @s enemydummy matches 7.. run kill @e[type=falling_block,tag=wblock,limit=1,sort=nearest]
execute if score @s enemydummy matches 7.. align xyz positioned ~0.5 ~ ~0.5 run tp @e[tag=somariablock] ~ ~ ~
execute if score @s enemydummy matches 7.. run kill @s