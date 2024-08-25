summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":126},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:91,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["rat","enemyCode","enemy"]}
summon silverfish ~ ~ ~ {Silent:1b,Team:"passive",Health:8f,Tags:["enemy","ratsf","hookshotable"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:1}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 91

execute store result score @e[type=armor_stand,tag=rat,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=ratsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1