summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:10,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["big_spear_soldier","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Silent:1b,Health:25f,Tags:["enemy","big_spear_soldierzo","hookshotable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25},{Name:generic.movement_speed,Base:0.24},{Name:generic.attack_damage,Base:8}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 10

#LINK THEM
execute store result score @e[type=armor_stand,tag=big_spear_soldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=big_spear_soldierzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1