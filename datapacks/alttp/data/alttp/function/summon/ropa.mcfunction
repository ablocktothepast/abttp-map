summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":275},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:104,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["ropa","enemyCode","enemy","hookshotable"]}
summon silverfish ~ ~ ~ {Silent:1b,NoAI:1b,Health:25f,Tags:["enemy","ropasf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 104

#LINK THEM
execute store result score @e[type=armor_stand,tag=ropa,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=ropasf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1