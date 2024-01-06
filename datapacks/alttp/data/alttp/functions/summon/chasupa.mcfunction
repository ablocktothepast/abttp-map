summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["chasupa","enemyCode","enemy","hookshotable"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:25}
summon silverfish ~ ~ ~ {Silent:1b,NoAI:1b,Health:25f,Tags:["enemy","chasupasf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 25

execute store result score @e[type=armor_stand,tag=chasupa,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=chasupasf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1