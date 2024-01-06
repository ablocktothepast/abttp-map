summon husk ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Health:10f,Tags:["enemy","blueswordsoldier_ai","noinvis","hookshotable"],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:generic.max_health,Base:10},{Name:generic.follow_range,Base:10},{Name:generic.attack_damage,Base:2}]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["blueswordsoldier","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:15}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 15

#LINK THEM
execute store result score @e[type=armor_stand,tag=blueswordsoldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=husk,tag=blueswordsoldier_ai,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1