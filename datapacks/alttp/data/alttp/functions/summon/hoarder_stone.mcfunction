summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["hoarder","enemyCode","enemy","h_stone"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:58}
summon ocelot ~ ~ ~ {Silent:1b,Health:14f,Tags:["enemy","hoardersf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:14}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 58

#LINK THEM
execute store result score @e[type=armor_stand,tag=hoarder,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=ocelot,tag=hoardersf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1