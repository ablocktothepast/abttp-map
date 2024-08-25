summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":121},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:129,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["yomomedusa","enemyCode","enemy","nolifesteal"]}
summon marker ~ ~ ~ {Tags:["yomomedusatracker"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 129

#LINK THEM
execute store result score @e[type=armor_stand,tag=yomomedusa,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=yomomedusatracker,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1