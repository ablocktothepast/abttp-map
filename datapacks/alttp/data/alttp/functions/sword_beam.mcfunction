execute store result score beamrot dummy run data get entity @s Rotation[1]
scoreboard players set 10 dummy 10
scoreboard players operation beamrot dummy -= 10 dummy

summon armor_stand ~ ~ ~ {Tags:["swordbeam"],Marker:1b,Invisible:1b,Pose:{LeftArm:[-10f,0f,0f],RightArm:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=swordbeam,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=swordbeam,limit=1,sort=nearest] store result entity @s Pose.RightArm[0] float 1 run scoreboard players get beamrot dummy
execute as @e[type=armor_stand,tag=swordbeam,limit=1,sort=nearest] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get beamrot dummy

playsound alttp.beam weather @p ~ ~ ~ 1 1