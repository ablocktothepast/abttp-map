summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["eyegore","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:33}
summon zombie ~ ~ ~ {Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.max_health,Base:30}],Health:30f,Silent:1b,Tags:["enemy","eyegorezo","hookshotable"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 33

execute store result score @e[type=armor_stand,tag=eyegore,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=eyegorezo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1