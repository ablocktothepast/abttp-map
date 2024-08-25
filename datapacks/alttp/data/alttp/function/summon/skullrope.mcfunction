summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:108,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["skullrope","enemyCode","enemy","hookshotable"]}
summon zombie ~ ~ ~ {Silent:1b,Health:12f,Tags:["enemy","skullropezo"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.attack_damage,Base:2}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 108

scoreboard players set @e[type=armor_stand,tag=skullrope,limit=1,sort=nearest] enemydummy 1

execute store result score @e[type=armor_stand,tag=skullrope,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=skullropezo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1