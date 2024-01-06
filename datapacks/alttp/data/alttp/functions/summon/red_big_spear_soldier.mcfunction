summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["red_big_spear_soldier","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:93}
summon zombie ~ ~ ~ {Silent:1b,Health:30f,Tags:["enemy","red_big_spear_soldierzo","hookshotable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:10}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 93

#LINK THEM
execute store result score @e[type=armor_stand,tag=red_big_spear_soldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=red_big_spear_soldierzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1