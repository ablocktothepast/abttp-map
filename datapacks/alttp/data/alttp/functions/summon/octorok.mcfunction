summon armor_stand ~ ~ ~ {Pose:{RightArm:[0.0f,0.0f,0.0f]},Marker:1b,Invisible:1b,Tags:["octorok","enemyCode","enemy"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:57}}],HurtByTimestamp:81}
summon silverfish ~ ~ ~ {Tags:["enemy","octoroksf","hookshotable"],Silent:1b,Team:"passive",Health:8f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.movement_speed,Base:0.2}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 81

execute store result score @e[type=armor_stand,tag=octorok,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=octoroksf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1