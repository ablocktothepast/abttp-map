summon armor_stand ~ ~ ~ {HandItems:[{count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:44,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["goriya","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Silent:1b,Health:20f,Tags:["enemy","goriyazo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 44

#LINK THEM
execute store result score @e[type=armor_stand,tag=goriya,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=goriyazo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1