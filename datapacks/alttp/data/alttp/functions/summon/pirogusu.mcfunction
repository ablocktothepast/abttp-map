summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["pirogusu","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:86}
summon silverfish ~ ~ ~ {Silent:1b,Health:20f,Tags:["enemy","pirogususf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7}],Attributes:[{Name:generic.max_health,Base:20}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 86

#LINK THEM
execute store result score @e[type=armor_stand,tag=pirogusu,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=pirogususf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1