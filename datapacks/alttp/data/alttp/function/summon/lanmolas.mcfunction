summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:air"},{}],HurtByTimestamp:69,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["lanmolas","enemyCode","enemy","lanmolasbit"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:air"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["lanmolasbody1","enemy","lanmolasbit"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:air"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["lanmolasbody2","enemy","lanmolasbit"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:air"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["lanmolasbody3","enemy","lanmolasbit"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:air"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["lanmolasbody4","enemy","lanmolasbit"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:air"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["lanmolasbody5","enemy","lanmolasbit"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:air"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["lanmolasbody6","enemy","lanmolasbit"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:air"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["lanmolasbody7","enemy","lanmolasbit"]}
summon slime ~ ~ ~ {Size:7,Silent:1b,NoAI:1b,Health:50f,Tags:["enemy","lanmolassl"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:99999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.attack_damage,Base:0}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 69

execute store result score @e[type=armor_stand,tag=lanmolas,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=lanmolasbody1,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=lanmolasbody2,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=lanmolasbody3,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=lanmolasbody4,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=lanmolasbody5,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=lanmolasbody6,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=lanmolasbody7,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=slime,tag=lanmolassl,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink

scoreboard players add .global enemylink 1

bossbar add lanmolas "Lanmolas"
bossbar set lanmolas color yellow
bossbar set lanmolas players @a
bossbar set lanmolas visible true
bossbar set lanmolas max 100