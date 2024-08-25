summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":74},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:102,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["red_tektite","enemyCode","enemy","hookshotable"]}
summon silverfish ~ ~ ~ {Silent:1b,Health:30f,Tags:["enemy","red_tektitesf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:30}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 102

#LINK THEM
execute store result score @e[type=armor_stand,tag=red_tektite,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=red_tektitesf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1