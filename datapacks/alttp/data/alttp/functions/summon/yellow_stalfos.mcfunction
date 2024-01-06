summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["yellow_stalfos","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:187}},{}],HurtByTimestamp:128}
summon zombie ~ ~ ~ {Silent:1b,Health:30f,Tags:["enemy","yellow_stalfoszo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.follow_range,Base:12}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 128

#LINK THEM
execute store result score @e[type=armor_stand,tag=yellow_stalfos,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=yellow_stalfoszo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1