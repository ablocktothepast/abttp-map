summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["green_stalfos","enemyCode","enemy","hookshotable"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:185}},{}],HurtByTimestamp:46}
summon silverfish ~ ~ ~ {Silent:1b,NoAI:1b,Health:35f,Tags:["enemy","green_stalfossf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 46

execute store result score @e[type=armor_stand,tag=green_stalfos,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=green_stalfossf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1