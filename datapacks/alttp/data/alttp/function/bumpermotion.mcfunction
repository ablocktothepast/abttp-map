summon armor_stand ~ ~ ~ {Tags:["bumper_motion"],NoGravity:1b,Marker:1b,Invisible:1b}
execute facing entity @p feet run tp @e[type=armor_stand,tag=bumper_motion] ~ ~ ~ ~ ~

execute store result score motion_x1 enemydummy2 run data get entity @e[type=armor_stand,tag=bumper_motion,limit=1] Pos[0] 1000
execute store result score motion_y1 enemydummy2 run data get entity @e[type=armor_stand,tag=bumper_motion,limit=1] Pos[1] 1000
execute store result score motion_z1 enemydummy2 run data get entity @e[type=armor_stand,tag=bumper_motion,limit=1] Pos[2] 1000

execute as @e[type=armor_stand,tag=bumper_motion,limit=1] at @s run tp @s ^ ^ ^0.06

execute store result score motion_x2 enemydummy2 run data get entity @e[type=armor_stand,tag=bumper_motion,limit=1] Pos[0] 1000
execute store result score motion_y2 enemydummy2 run data get entity @e[type=armor_stand,tag=bumper_motion,limit=1] Pos[1] 1000
execute store result score motion_z2 enemydummy2 run data get entity @e[type=armor_stand,tag=bumper_motion,limit=1] Pos[2] 1000

execute at @p positioned ~ ~0.5 ~ run summon armor_stand ~ ~ ~ {Tags:["bumper_tracker"],Marker:0b,Invisible:1b}

execute store result entity @e[type=armor_stand,tag=bumper_tracker,limit=1] Motion[0] double 0.01 run scoreboard players operation motion_x2 enemydummy2 -= motion_x1 enemydummy2
execute store result entity @e[type=armor_stand,tag=bumper_tracker,limit=1] Motion[1] double 0.01 run scoreboard players operation motion_y2 enemydummy2 -= motion_y1 enemydummy2
execute store result entity @e[type=armor_stand,tag=bumper_tracker,limit=1] Motion[2] double 0.01 run scoreboard players operation motion_z2 enemydummy2 -= motion_z1 enemydummy2

playsound alttp.bounce weather @p ~ ~ ~ 100000

effect give @p resistance 3 2 true

kill @e[type=armor_stand,tag=bumper_motion]