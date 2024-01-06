summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["green_spear_soldier","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:45}
summon zombie ~ ~ ~ {Silent:1b,Health:15f,Tags:["enemy","green_spear_soldierzo","hookshotable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:15},{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:6}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 45

#LINK THEM
execute store result score @e[type=armor_stand,tag=green_spear_soldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=green_spear_soldierzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1