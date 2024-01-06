kill @e[type=marker,tag=tpraycast]
summon marker ~ ~ ~ {Tags:["tpraycast"]}

execute as @e[type=marker,tag=tpraycast] at @e[type=armor_stand,tag=thirdperson_player] positioned ~ ~1.5 ~ rotated as @p rotated ~ ~-5 rotated ~ ~180 run tp @s ~ ~ ~ ~ ~
scoreboard players set tploop dummy 0

##Loop
execute as @e[type=marker,tag=tpraycast] at @s rotated as @p rotated ~ ~180 run function alttp:thirdperson/loop