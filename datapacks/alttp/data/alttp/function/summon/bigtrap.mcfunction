summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":256},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:12,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["bigtrap","enemyCode","enemy","nolifesteal"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 12