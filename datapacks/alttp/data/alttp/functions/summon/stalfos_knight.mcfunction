summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["stalfos_knight","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:205}},{}],HurtByTimestamp:115}
summon zombie ~ ~ ~ {Silent:1b,Health:100f,Tags:["enemy","stalfos_knightzo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:75},{Name:generic.attack_damage,Base:0}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 115

#LINK THEM
execute store result score @e[type=armor_stand,tag=stalfos_knight,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=stalfos_knightzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1