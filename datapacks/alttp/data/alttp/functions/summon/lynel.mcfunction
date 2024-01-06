summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["lynel","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:74}
summon zombie ~ ~ ~ {Silent:1b,Health:40f,Tags:["enemy","lynelzo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:10}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 74

#LINK THEM
execute store result score @e[type=armor_stand,tag=lynel,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=lynelzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1