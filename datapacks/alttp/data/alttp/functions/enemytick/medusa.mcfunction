scoreboard players add @s enemydummy 1

execute if entity @s[tag=wall] unless block ~-0.5 ~ ~ #gothrough align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ -90 0
execute if entity @s[tag=wall] unless block ~0.5 ~ ~ #gothrough align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 90 0
execute if entity @s[tag=wall] unless block ~ ~ ~0.5 #gothrough align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 180 0
execute if entity @s[tag=wall] unless block ~ ~ ~-0.5 #gothrough align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 0 0

execute if entity @s[tag=floor] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 90 0

execute if entity @s[tag=wall] if score @s enemydummy matches 40 if entity @p[distance=..10] run function alttp:medusashoot
execute if entity @s[tag=floor] if score @s enemydummy matches 40 if entity @p[distance=..10] facing entity @p eyes run function alttp:medusashoot

execute if score @s enemydummy matches 60.. run scoreboard players set @s enemydummy 0