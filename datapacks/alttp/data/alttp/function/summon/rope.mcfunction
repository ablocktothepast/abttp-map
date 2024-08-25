summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":113},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:105,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["rope","enemyCode","enemy","hookshotable"]}
summon zombie ~ ~ ~ {Silent:1b,Health:12f,Tags:["enemy","ropezo"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.attack_damage,Base:2}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 105

scoreboard players set @e[type=armor_stand,tag=rope,limit=1,sort=nearest] enemydummy 1

execute store result score @e[type=armor_stand,tag=rope,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=ropezo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1