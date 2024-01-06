summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["dummy","enemyCode","enemy","nolifesteal"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:86}},{}],HurtByTimestamp:31}
summon piglin ~ ~ ~ {Silent:1b,NoAI:1b,Health:999f,Tags:["dummypi","enemy","nolifesteal"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:999}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 31

#LINK THEM
execute store result score @e[type=armor_stand,tag=dummy,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=piglin,tag=dummypi,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1