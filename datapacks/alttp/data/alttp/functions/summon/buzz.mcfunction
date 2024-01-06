summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["buzz","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:20}
summon silverfish ~ ~ ~ {Silent:1b,Team:"passive",Health:18f,Tags:["enemy","buzzsf"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:18},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:7}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 20

execute store result score @e[type=zombie,tag=buzz,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=buzzsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1