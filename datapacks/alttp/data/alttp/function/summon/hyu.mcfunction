summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:61,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["hyu","enemyCode","enemy","hookshotable"]}
summon silverfish ~ ~ ~ {Silent:1b,Health:25f,Tags:["enemy","hyusf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25}]}

scoreboard players set @e[type=armor_stand,tag=hyu,limit=1,sort=nearest] enemydummy2 1

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 61

#LINK THEM
execute store result score @e[type=armor_stand,tag=hyu,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=hyusf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1