summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:60,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["hokkubokkusegment","enemyCode","enemy"]}
summon silverfish ~ ~ ~ {Silent:1b,Health:10f,Tags:["enemy","hokkubokkusegmentsf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:10},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:5}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 60

#LINK THEM
execute store result score @e[type=armor_stand,tag=hokkubokkusegment,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=hokkubokkusegmentsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1