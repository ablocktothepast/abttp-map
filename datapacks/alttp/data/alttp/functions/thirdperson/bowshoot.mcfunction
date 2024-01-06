execute at @e[type=armor_stand,tag=thirdperson_player] positioned ~ ~1.3 ~ run summon arrow ~ ~ ~ {Tags:["tparrow"]}
execute at @e[type=armor_stand,tag=thirdperson_player] rotated as @p as @e[type=arrow,tag=tparrow,tag=!init] run tp @s ~ ~1.3 ~ ~ ~
execute as @e[type=arrow,tag=tparrow,tag=!init] at @s run function alttp:thirdperson/arrowlaunch
tag @e[type=arrow,tag=tparrow,tag=!init] add init
data remove entity @e[type=interaction,tag=thirdperson_interaction,limit=1] attack
scoreboard players remove @p arrows 1
execute at @p run playsound minecraft:entity.arrow.shoot weather @p