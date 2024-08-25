execute store result score tpvelold dummy run data get entity @e[type=armor_stand,tag=thirdperson_player,limit=1] Motion[1] 1000

execute unless score tpbow dummy matches 1.. if score .w wasd matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 if block ^ ^ ^0.5 #gothrough if block ^ ^1.3 ^0.5 #gothrough if block ^-0.3 ^ ^0.5 #gothrough if block ^0.3 ^ ^0.5 #gothrough if block ^-0.3 ^1.3 ^0.5 #gothrough if block ^0.3 ^1.3 ^0.5 #gothrough run tp @s ^ ^ ^0.2
execute unless score tpbow dummy matches 1.. if score .s wasd matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 if block ^ ^ ^-0.5 #gothrough if block ^ ^1.3 ^-0.5 #gothrough if block ^-0.3 ^ ^-0.5 #gothrough if block ^0.3 ^ ^-0.5 #gothrough if block ^-0.3 ^1.3 ^-0.5 #gothrough if block ^0.3 ^1.3 ^-0.5 #gothrough run tp @s ^ ^ ^-0.2 
execute unless score tpbow dummy matches 1.. if score .d wasd matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 if block ^-0.5 ^ ^ #gothrough if block ^-0.5 ^1.3 ^ #gothrough if block ^-0.5 ^ ^0.3 #gothrough if block ^-0.5 ^ ^-0.3 #gothrough if block ^-0.5 ^1.3 ^0.3 #gothrough if block ^-0.5 ^1.3 ^-0.3 #gothrough run tp @s ^-0.2 ^ ^
execute unless score tpbow dummy matches 1.. if score .a wasd matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 if block ^0.5 ^ ^ #gothrough if block ^0.5 ^1.3 ^ #gothrough if block ^0.5 ^ ^0.3 #gothrough if block ^0.5 ^ ^-0.3 #gothrough if block ^0.5 ^1.3 ^0.3 #gothrough if block ^0.5 ^1.3 ^-0.3 #gothrough run tp @s ^0.2 ^ ^

execute if score tpbow dummy matches 1.. if score .w wasd matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 if block ^ ^ ^0.5 #gothrough if block ^ ^1.3 ^0.5 #gothrough run tp @s ^ ^ ^0.1
execute if score tpbow dummy matches 1.. if score .s wasd matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 if block ^ ^ ^-0.5 #gothrough if block ^ ^1.3 ^-0.5 #gothrough run tp @s ^ ^ ^-0.1 
execute if score tpbow dummy matches 1.. if score .d wasd matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 if block ^-0.5 ^ ^ #gothrough if block ^-0.5 ^1.3 ^ #gothrough run tp @s ^-0.1 ^ ^
execute if score tpbow dummy matches 1.. if score .a wasd matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 if block ^0.5 ^ ^ #gothrough if block ^0.5 ^1.3 ^ #gothrough run tp @s ^0.1 ^ ^

execute if score .w wasd matches 1.. if score .a wasd matches 0 if score .d wasd matches 0 as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score .w wasd matches 1.. if score .a wasd matches 1 if score .d wasd matches 0 as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 run tp @s ~ ~ ~ ~-45 ~
execute if score .w wasd matches 1.. if score .a wasd matches 0 if score .d wasd matches 1 as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 run tp @s ~ ~ ~ ~45 ~

execute if score .s wasd matches 1.. if score .a wasd matches 0 if score .d wasd matches 0 as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 run tp @s ~ ~ ~ ~180 ~
execute if score .s wasd matches 1.. if score .a wasd matches 1 if score .d wasd matches 0 as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 run tp @s ~ ~ ~ ~-135 ~
execute if score .s wasd matches 1.. if score .a wasd matches 0 if score .d wasd matches 1 as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 run tp @s ~ ~ ~ ~135 ~

execute if score .d wasd matches 1.. if score .w wasd matches 0 if score .s wasd matches 0 as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 run tp @s ~ ~ ~ ~90 ~

execute if score .a wasd matches 1.. if score .w wasd matches 0 if score .s wasd matches 0 as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p rotated ~ 0 run tp @s ~ ~ ~ ~-90 ~

execute store result entity @e[type=armor_stand,tag=thirdperson_player,limit=1] Motion[1] double 0.001 run scoreboard players get tpvelold dummy

##Auto-jump
execute as @e[type=armor_stand,tag=thirdperson_player] at @s rotated ~ 0 unless block ^ ^ ^0.75 #gothrough if block ^ ^1.3 ^0.75 #gothrough if block ^ ^2.3 ^0.75 #gothrough run data merge entity @e[type=armor_stand,tag=thirdperson_player,limit=1] {Motion:[0.0d,0.4d,0.0d]}

execute as @e[type=armor_stand,tag=thirdperson_player] at @s rotated ~ 0 if block ^ ^ ^0.75 #gothrough if block ^ ^1.3 ^0.75 #gothrough if block ^ ^2.3 ^0.75 #gothrough unless block ^ ^-0.01 ^ #gothrough if block ^ ^-0.01 ^0.2 #gothrough run data merge entity @e[type=armor_stand,tag=thirdperson_player,limit=1] {Motion:[0.0d,0.4d,0.0d]}