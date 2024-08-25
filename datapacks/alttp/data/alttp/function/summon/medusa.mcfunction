summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":123},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:75,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["medusa","enemyCode","enemy","floor","nolifesteal"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 75

tp @e[type=armor_stand,tag=medusa,tag=!posed] ~ ~ ~ ~ 0
tag @e[type=armor_stand,tag=medusa] add posed