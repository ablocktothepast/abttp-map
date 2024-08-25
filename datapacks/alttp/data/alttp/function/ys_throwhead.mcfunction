scoreboard players set @s enemydummy -60

execute rotated ~ 0 run summon armor_stand ^ ^1.45 ^0.6 {HandItems:[{components:{"minecraft:custom_model_data":194},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["enemy","ys_head","nolifesteal"]}

execute as @e[type=armor_stand,tag=ys_head,tag=!posed] run tp @s ~ ~1.45 ~ ~ 0
tag @e[type=armor_stand,tag=ys_head,tag=!posed] add posed