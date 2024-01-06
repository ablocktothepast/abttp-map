summon zombie ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Health:8f,Tags:["enemy","greensoldier_ai","noinvis","hookshotable"],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b}},{}],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.attack_damage,Base:1},{Name:generic.follow_range,Base:10}]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["greensoldier","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:49}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 49

#LINK THEM
execute store result score @e[type=armor_stand,tag=greensoldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=greensoldier_ai,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1