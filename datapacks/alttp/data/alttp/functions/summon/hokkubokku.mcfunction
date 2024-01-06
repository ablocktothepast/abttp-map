summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["hokkubokku","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HurtByTimestamp:59}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["enemy","hokkubokku1"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["enemy","hokkubokku2"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["enemy","hokkubokku3"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["enemy","hokkubokku4"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}]}
summon zombie ~ ~ ~ {Silent:1b,NoAI:1b,Health:25f,Tags:["enemy","hokkubokkuzo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:999}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 59

#LINK THEM
execute store result score @e[type=armor_stand,tag=hokkubokku,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=hokkubokku1,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=hokkubokku2,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=hokkubokku3,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=hokkubokku4,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=hokkubokkuzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1