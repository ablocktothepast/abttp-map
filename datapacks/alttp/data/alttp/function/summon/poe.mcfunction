execute store result score result rand run random value 1..4
execute if score result rand matches 1 run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":68},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["poe","enemyCode","enemy"]}
execute if score result rand matches 2 run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":69},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["poe","enemyCode","enemy"]}
execute if score result rand matches 3 run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":70},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["poe","enemyCode","enemy"]}
execute if score result rand matches 4 run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":71},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["poe","enemyCode","enemy"]}
summon silverfish ~ ~ ~ {Silent:1b,Health:15f,Tags:["enemy","poesf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:15}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 87

scoreboard players set @e[type=armor_stand,tag=poe,limit=1,sort=nearest] enemydummy2 1

#LINK THEM
execute store result score @e[type=armor_stand,tag=poe,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=poesf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1