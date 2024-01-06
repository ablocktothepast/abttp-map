summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["red_zazak","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:103}
summon zombie ~ ~ ~ {Silent:1b,Health:45f,Tags:["enemy","red_zazakzo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:45},{Name:generic.attack_knockback,Base:0.8}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 103

#LINK THEM
execute store result score @e[type=armor_stand,tag=red_zazak,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=red_zazakzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1