execute at @e[type=armor_stand,tag=thirdperson_player] run summon marker ~ ~ ~ {Tags:["tp_swordraycast3"]}
execute at @e[type=armor_stand,tag=thirdperson_player] positioned ~ ~1.8 ~ rotated as @p rotated ~30 ~ run tp @e[type=marker,tag=tp_swordraycast3] ~ ~ ~ ~ ~
scoreboard players set @e[type=marker,tag=tp_swordraycast3] dummy 0
execute as @e[type=marker,tag=tp_swordraycast3] at @s run function alttp:thirdperson/sword_raycast

scoreboard players set tpslash dummy 0