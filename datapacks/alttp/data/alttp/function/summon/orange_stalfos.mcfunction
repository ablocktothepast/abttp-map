summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":186},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:82,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["orange_stalfos","enemyCode","enemy"]}
summon silverfish ~ ~ ~ {Silent:1b,NoAI:1b,Health:35f,Tags:["enemy","orange_stalfossf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:40}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 82

execute store result score @e[type=armor_stand,tag=orange_stalfos,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=orange_stalfossf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1