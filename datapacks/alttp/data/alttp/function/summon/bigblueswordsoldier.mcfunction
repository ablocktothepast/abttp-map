summon zombie_villager ~ ~ ~ {ActiveEffects:[{Amplifier:1b,Duration:7,Id:14,ShowParticles:0b}],Attributes:[{Base:12,Name:"generic.max_health"},{Base:10,Name:"generic.follow_range"},{Base:1,Name:"generic.attack_damage"}],HandItems:[{components:{"minecraft:unbreakable":{}},count:1,id:"minecraft:stone_sword"},{components:{"minecraft:unbreakable":{}},count:1,id:"minecraft:shield"}],Health:12.0f,Silent:1b,Tags:["enemy","bigblueswordsoldier_ai","hookshotable"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:11,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["bigblueswordsoldier","enemyCode","enemy"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 11

#LINK THEM
execute store result score @e[type=armor_stand,tag=bigblueswordsoldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie_villager,tag=bigblueswordsoldier_ai,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1