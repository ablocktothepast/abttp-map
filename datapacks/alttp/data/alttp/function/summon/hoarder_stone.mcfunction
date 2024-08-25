summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:58,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["hoarder","enemyCode","enemy","h_stone"]}
summon ocelot ~ ~ ~ {Silent:1b,Health:14f,Tags:["enemy","hoardersf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:14}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 58

#LINK THEM
execute store result score @e[type=armor_stand,tag=hoarder,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=ocelot,tag=hoardersf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1