summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:47,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["green_zirro","enemyCode","enemy","hookshotable"]}
summon silverfish ~ ~ ~ {Silent:1b,NoAI:1b,Health:30f,Tags:["enemy","green_zirrosf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:30}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 47

#LINK THEM
execute store result score @e[type=armor_stand,tag=green_zirro,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=green_zirrosf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1