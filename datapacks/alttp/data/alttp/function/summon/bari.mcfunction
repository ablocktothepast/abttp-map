summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":92},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:6,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["bari","enemyCode","enemy","hookshotable"]}
summon silverfish ~ ~ ~ {Silent:1b,Health:15f,Tags:["enemy","barisf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:15},{Name:generic.movement_speed,Base:0.2}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 6

#LINK THEM
execute store result score @e[type=armor_stand,tag=bari,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=barisf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1