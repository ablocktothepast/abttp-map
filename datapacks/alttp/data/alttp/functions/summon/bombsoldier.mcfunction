summon armor_stand ~ ~ ~ {Tags:["bombsoldier","enemyCode","enemy","hookshotable"],Pose:{RightArm:[0f,0f,0f]},Marker:1b,Invisible:1b,HandItems:[{Count:1b,id:"carrot_on_a_stick",tag:{CustomModelData:32}},{}],HurtByTimestamp:17}
summon zombie ~ ~ ~ {Silent:1b,NoAI:1b,Health:30f,Tags:["enemy","bombsoldierzo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:30}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 17

#LINK THEM
execute store result score @e[type=armor_stand,tag=bombsoldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=bombsoldierzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1