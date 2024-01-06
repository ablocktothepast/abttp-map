scoreboard players set tpswordcool dummy 13
data remove entity @e[type=interaction,tag=thirdperson_interaction,limit=1] attack
execute at @e[type=armor_stand,tag=thirdperson_player] positioned ~ ~1.8 ~ rotated as @p positioned ^ ^ ^1.5 run particle sweep_attack ~ ~ ~ 0 0 0 0 1 force

##Raycast
kill @e[type=marker,tag=tp_swordraycast]
tag @e[tag=tphit] remove tphit
scoreboard players set tphit dummy 0
function alttp:thirdperson/sword_raycast1
schedule function alttp:thirdperson/sword_raycast2 3t
schedule function alttp:thirdperson/sword_raycast3 6t
execute as @e[type=armor_stand,tag=thirdperson_player] at @s rotated as @p run tp @s ~ ~ ~ ~ ~