execute unless score @s enemydummy matches -100.. run scoreboard players set @s enemydummy 10
scoreboard players add @s enemydummy 1

#Increase in size
scoreboard players add @s enemydummy2 4
execute store result entity @s transformation.scale[0] float 0.1 run scoreboard players get @s enemydummy2
execute store result entity @s transformation.scale[1] float 0.1 run scoreboard players get @s enemydummy2
execute store result entity @s transformation.scale[2] float 0.1 run scoreboard players get @s enemydummy2

#Go down
execute if score @s enemydummy matches 40..45 run tp @s ~ ~-0.3 ~
execute if score @s enemydummy matches 46..50 run tp @s ~ ~-0.4 ~
execute if score @s enemydummy matches 51..55 run tp @s ~ ~-0.5 ~
execute if score @s enemydummy matches 56..60 run tp @s ~ ~-0.6 ~
execute if score @s enemydummy matches 61..65 run tp @s ~ ~-0.7 ~
execute if score @s enemydummy matches 66..70 run tp @s ~ ~-0.8 ~
execute if score @s enemydummy matches 71..75 run tp @s ~ ~-0.9 ~
execute if score @s enemydummy matches 76.. run tp @s ~ ~-1 ~

#Damage radius
execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 10..25 positioned 6967.0 68.0 6955.0 run scoreboard players set @p[distance=..4] set_damage 8
execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 10..25 positioned 6967.0 68.0 6955.0 if entity @p[distance=..4] run scoreboard players set @s enemydummy3 1

execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 25..40 positioned 6967.0 68.0 6955.0 run scoreboard players set @p[distance=..8] set_damage 7
execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 25..40 positioned 6967.0 68.0 6955.0 if entity @p[distance=..8] run scoreboard players set @s enemydummy3 1

execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 40..50 positioned 6967.0 68.0 6955.0 run scoreboard players set @p[distance=..12] set_damage 6
execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 40..50 positioned 6967.0 68.0 6955.0 if entity @p[distance=..12] run scoreboard players set @s enemydummy3 1

execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 50..60 positioned 6967.0 68.0 6955.0 run scoreboard players set @p[distance=..16] set_damage 5
execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 50..60 positioned 6967.0 68.0 6955.0 if entity @p[distance=..16] run scoreboard players set @s enemydummy3 1

execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 60.. positioned 6967.0 68.0 6955.0 run scoreboard players set @p[distance=..20] set_damage 4
execute unless score @s enemydummy3 matches 1 if score @s enemydummy matches 60.. positioned 6967.0 68.0 6955.0 if entity @p[distance=..20] run scoreboard players set @s enemydummy3 1

#Sand particles
execute if score @s enemydummy matches 10..15 run particle block sandstone ~ ~1 ~ 3 0 3 0.1 50 force
execute if score @s enemydummy matches 15..20 run particle block sandstone ~ ~2 ~ 3 0 3 0.1 60 force
execute if score @s enemydummy matches 20..25 run particle block sandstone ~ ~3 ~ 4 0 4 0.1 70 force
execute if score @s enemydummy matches 25..30 run particle block sandstone ~ ~4 ~ 4 0 4 0.1 80 force
execute if score @s enemydummy matches 30..35 run particle block sandstone ~ ~5 ~ 6 0 6 0.1 90 force
execute if score @s enemydummy matches 35..40 run particle block sandstone ~ ~6 ~ 8 0 8 0.1 100 force
execute if score @s enemydummy matches 40..45 run particle block sandstone ~ ~5 ~ 10 0 10 0.1 110 force
execute if score @s enemydummy matches 45..50 run particle block sandstone ~ ~4 ~ 12 0 12 0.1 120 force
execute if score @s enemydummy matches 50..55 run particle block sandstone ~ ~3 ~ 14 0 14 0.1 130 force
execute if score @s enemydummy matches 55..60 run particle block sandstone ~ ~2 ~ 16 0 16 0.1 140 force
execute if score @s enemydummy matches 60.. run particle block sandstone ~ ~1 ~ 18 0 18 0.1 150 force

#Sound
execute if score @s enemydummy matches 10..15 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 0.5 1
execute if score @s enemydummy matches 15..20 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 1 1
execute if score @s enemydummy matches 20..25 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 1.5 1
execute if score @s enemydummy matches 25..30 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 2 1
execute if score @s enemydummy matches 30..35 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 2.33 1
execute if score @s enemydummy matches 35..40 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 2.66 1
execute if score @s enemydummy matches 40..45 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 3 1
execute if score @s enemydummy matches 45..50 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 3.33 1
execute if score @s enemydummy matches 50..55 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 3.66 1
execute if score @s enemydummy matches 55..60 run playsound block.sand.break weather @p 6967.0 68.0 6955.0 4 1

execute if score @s enemydummy matches 70.. run kill @s