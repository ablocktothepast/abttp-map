summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:33,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["eyegore","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.max_health,Base:30}],Health:30f,Silent:1b,Tags:["enemy","eyegorezo","hookshotable"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 33

execute store result score @e[type=armor_stand,tag=eyegore,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=eyegorezo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1