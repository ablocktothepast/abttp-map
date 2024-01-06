summon skeleton ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Health:8f,Tags:["enemy","bluebowsoldier_ai","hookshotable"],HandItems:[{id:"minecraft:bow",Count:1b},{}],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:10},{Name:generic.attack_damage,Base:1}]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["bluebowsoldier","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:14}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 14

#LINK THEM
execute store result score @e[type=armor_stand,tag=bluebowsoldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=skeleton,tag=bluebowsoldier_ai,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1