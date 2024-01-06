summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["sluggula","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:111}
summon silverfish ~ ~ ~ {Silent:1b,Health:15f,Tags:["enemy","sluggulasf","hookshotable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.max_health,Base:15},{Name:generic.follow_range,Base:3},{Name:generic.movement_speed,Base:0.2}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 111

#LINK THEM
execute store result score @e[type=armor_stand,tag=sluggula,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=sluggulasf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1