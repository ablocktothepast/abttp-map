summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["popo","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:88}
summon ocelot ~ ~ ~ {Silent:1b,Health:1f,Tags:["enemy","popooc","hookshotable"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.15}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 88

execute store result score @e[type=armor_stand,tag=popo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=ocelot,tag=popooc,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1