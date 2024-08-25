summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":76},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:70,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["laser_eye","enemyCode","enemy","nolifesteal"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 70

tp @e[type=armor_stand,tag=laser_eye,limit=1,sort=nearest] ~ ~ ~ ~ 0