scoreboard players add @s ethertick 1

execute if score @s ethertick matches 1 run effect give @e[distance=..10] resistance 255 255 true
execute if score @s ethertick matches 2 run summon lightning_bolt ~ ~ ~
execute if score @s ethertick matches 15 run effect clear @e[distance=..11] resistance
execute if score @s ethertick matches 1..15 as @e[distance=..15] run data merge entity @s {Fire:-20s}
execute if score @s ethertick matches 5 run summon lightning_bolt ~ ~ ~
execute if score @s ethertick matches 5 run particle electric_spark ~ ~ ~ 1 1 1 0.2 50
execute if score @s ethertick matches 8 run summon lightning_bolt ~ ~ ~
execute if score @s ethertick matches 8 run particle electric_spark ~ ~ ~ 2 1.5 2 0.2 60
execute if score @s ethertick matches 11 run summon lightning_bolt ~ ~ ~
execute if score @s ethertick matches 11 run particle electric_spark ~ ~ ~ 3 2 3 0.2 75
execute if score @s ethertick matches 14 run summon lightning_bolt ~ ~ ~
execute if score @s ethertick matches 14 run particle electric_spark ~ ~ ~ 4 3 4 0.25 125

execute if score @s ethertick matches 23 run particle minecraft:snowflake ~ ~1 ~ 0 0 0 0 100
execute if score @s ethertick matches 24 run particle minecraft:snowflake ~ ~1 ~ 0.5 0.5 0.5 0 120
execute if score @s ethertick matches 25 run particle minecraft:snowflake ~ ~1 ~ 1 1 1 0 140
execute if score @s ethertick matches 26 run particle minecraft:snowflake ~ ~1 ~ 2 2 2 0 160
execute if score @s ethertick matches 27 run particle minecraft:snowflake ~ ~1 ~ 3 3 3 0 180
execute if score @s spw_e_10 matches 1 if score @s ethertick matches 27 run particle minecraft:snowflake ~ ~1 ~ 6 6 6 0 180
execute if score @s ethertick matches 28 run particle minecraft:snowflake ~ ~1 ~ 4 4 4 0 200
execute if score @s spw_e_10 matches 1 if score @s ethertick matches 28 run particle minecraft:snowflake ~ ~1 ~ 8 8 8 0 180

execute if score @s ethertick matches 20 run execute as @e[tag=enemy,type=!armor_stand,distance=..8] at @s if block ~ ~-0.1 ~ #gothrough run damage @s 30
execute if score @s spw_e_10 matches 1 if score @s ethertick matches 20 run execute as @e[tag=enemy,type=!armor_stand,distance=..16] at @s if block ~ ~-0.1 ~ #gothrough run damage @s 50
execute if score @s ethertick matches 20 run execute as @e[tag=enemy,distance=..8] at @s unless block ~ ~-0.1 ~ #gothrough run tag @s add icerodfrozen
execute if score @s ethertick matches 20 run execute as @e[tag=enemy,distance=..8] at @s unless block ~ ~-0.1 ~ #gothrough run scoreboard players set @s frozentimer 200
execute if score @s spw_e_10 matches 1 if score @s ethertick matches 20 run execute as @e[tag=enemy,distance=..16] at @s unless block ~ ~-0.1 ~ #gothrough run tag @s add icerodfrozen
execute if score @s spw_e_10 matches 1 if score @s ethertick matches 20 run execute as @e[tag=enemy,distance=..16] at @s unless block ~ ~-0.1 ~ #gothrough run scoreboard players set @s frozentimer 200
execute if score @s spw_e_10 matches 1 if score @s ethertick matches 20 run execute as @e[tag=enemy,distance=..16] at @s unless block ~ ~-0.1 ~ #gothrough run damage @s 15

execute if score @s ethertick matches 30 run scoreboard players set @s spw_c_10 0