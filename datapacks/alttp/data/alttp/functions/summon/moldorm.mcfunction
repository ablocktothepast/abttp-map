summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moldorm","enemyCode","enemy"],HurtByTimestamp:78}

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moldorm_body1","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:215}},{}]}

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moldorm_body2","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:216}},{}]}

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moldorm_body3","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:217}},{}]}

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moldorm_body4","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:218}},{}]}

summon zombie ~ ~ ~ {Silent:1b,NoAI:1b,Health:150f,Tags:["enemy","moldormzombie"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:150}]}

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moldormhead","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:214}},{}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 78


execute store result score @e[type=armor_stand,tag=moldorm,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=moldorm_body1,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=moldorm_body2,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=moldorm_body3,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=moldorm_body4,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=moldormzombie,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=moldormhead,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink

scoreboard players set @e[type=armor_stand,tag=moldorm,limit=1,sort=nearest] enemydummy16 -5
scoreboard players set @e[type=armor_stand,tag=moldorm_body1,limit=1,sort=nearest] enemydummy16 -3
scoreboard players set @e[type=armor_stand,tag=moldorm_body2,limit=1,sort=nearest] enemydummy16 -1
scoreboard players set @e[type=armor_stand,tag=moldorm_body3,limit=1,sort=nearest] enemydummy16 1
scoreboard players set @e[type=armor_stand,tag=moldorm_body4,limit=1,sort=nearest] enemydummy16 3

kill @e[type=marker,tag=molcp]

bossbar add moldorm "Moldorm"
bossbar set moldorm color yellow
bossbar set moldorm max 150
bossbar set moldorm players @a
bossbar set moldorm visible true

scoreboard players add .global enemylink 1