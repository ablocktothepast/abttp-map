summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["red_taros","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:101}
summon zombie ~ ~ ~ {Silent:1b,Health:30f,Tags:["enemy","red_taroszo","hookshotable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.29},{Name:generic.follow_range,Base:20},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:6}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 101

#LINK THEM
execute store result score @e[type=armor_stand,tag=red_taros,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=red_taroszo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1