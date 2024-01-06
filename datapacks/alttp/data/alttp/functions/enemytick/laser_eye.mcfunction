#ALIGN FLAT MODEL
execute unless block ~-0.5 ~ ~ #gothrough align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ -90 0
execute unless block ~0.5 ~ ~ #gothrough align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 90 0
execute unless block ~ ~ ~0.5 #gothrough align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 180 0
execute unless block ~ ~ ~-0.5 #gothrough align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 0 0

#Shooty shooty when linky linky
execute unless score @s enemydummy2 matches -2147483648..2147483647 run scoreboard players set @s enemydummy2 0
execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

execute if score @s enemydummy2 matches 0 run scoreboard players set @s enemydummy 0
execute if score @s enemydummy2 matches 0 if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^0.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^1 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^1.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^2 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^2.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^3 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^3.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^4 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^4.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^5.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^6 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^6.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^ ^7 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1

execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^ if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^0.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^1 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^1.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^2 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^2.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^3 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^3.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^4 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^4.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^5.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^6 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^6.5 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy2 matches 0 rotated ~ 0 positioned ^ ^-1 ^7 if block ~ ~ ~ #gothrough if entity @p[distance=..0.5] run scoreboard players set @s enemydummy 1

execute if score @s enemydummy2 matches 0 if score @s enemydummy matches 1 run function alttp:lasershoot

execute if score @s enemydummy2 matches 80.. run scoreboard players set @s enemydummy2 0