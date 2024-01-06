summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["geldman","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:39}
summon zombie ~ ~ ~ {Silent:1b,Health:35f,Tags:["enemy","geldmanzo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.movement_speed,Base:0.32696969}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 39

#LINK THEM
execute store result score @e[type=armor_stand,tag=geldman,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=geldmanzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1