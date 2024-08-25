summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":279},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:109,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["slarok","enemyCode","enemy"]}
summon silverfish ~ ~ ~ {Tags:["enemy","slaroksf","hookshotable"],Silent:1b,Team:"passive",Health:16f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:16},{Name:generic.movement_speed,Base:0.22}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 109

execute store result score @e[type=armor_stand,tag=slarok,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=slaroksf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1