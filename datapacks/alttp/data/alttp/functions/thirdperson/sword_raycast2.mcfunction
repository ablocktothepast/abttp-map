execute at @e[type=armor_stand,tag=thirdperson_player] run summon marker ~ ~ ~ {Tags:["tp_swordraycast2"]}
execute at @e[type=armor_stand,tag=thirdperson_player] positioned ~ ~1.8 ~ rotated as @p rotated ~ ~ run tp @e[type=marker,tag=tp_swordraycast2] ~ ~ ~ ~ ~
scoreboard players set @e[type=marker,tag=tp_swordraycast2] dummy 0
execute as @e[type=marker,tag=tp_swordraycast2] at @s run function alttp:thirdperson/sword_raycast