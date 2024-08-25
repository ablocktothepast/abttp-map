scoreboard players set @s enemydummy3 0

summon armor_stand ^ ^0.075 ^0.75 {HandItems:[{components:{"minecraft:custom_model_data":224},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["enemy","cannonball","nolifesteal"]}

execute as @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest] run tp @s ^ ^0.075 ^0.75 ~ ~

playsound minecraft:alttp.cannonballs weather @p[distance=..15] ~ ~ ~ 0.8 1 0.3