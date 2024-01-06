kill @e[type=marker,tag=tpraycast]
summon marker ~ ~ ~ {Tags:["tpraycast"]}

execute as @e[type=marker,tag=tpraycast] at @e[type=armor_stand,tag=thirdperson_player] positioned ~ ~0.85 ~ rotated as @p rotated ~ ~-5 rotated ~-35 ~180 run tp @s ~ ~ ~ ~ ~
scoreboard players set tploop dummy 0

##Loop
execute as @e[type=marker,tag=tpraycast] at @s rotated as @p rotated ~-35 ~180 run function alttp:thirdperson/loop_bow

##Other
execute as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p run tp @s ~ ~ ~ ~ ~