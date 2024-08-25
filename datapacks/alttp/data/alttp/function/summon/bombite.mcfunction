summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:16,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["bombite","enemyCode","enemy"]}
summon silverfish ~ ~ ~ {Silent:1b,Health:99f,Tags:["enemy","bombitesf","hookshotable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 16

#LINK THEM
execute store result score @e[type=armor_stand,tag=bombite,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=bombitesf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1