summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":254},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:18,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[45.0f,0.0f],Tags:["bubble","enemyCode","enemy","nolifesteal"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":255},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[45.0f,0.0f],Tags:["bubble_balls","enemy","nolifesteal"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 18

#LINK THEM
execute store result score @e[type=armor_stand,tag=bubble,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=bubble_balls,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1