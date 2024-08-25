summon armor_stand ~ ~0.3 ~ {HandItems:[{components:{"minecraft:custom_model_data":22},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["1","enemy","rollingspiketrap","enemyCode"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 136