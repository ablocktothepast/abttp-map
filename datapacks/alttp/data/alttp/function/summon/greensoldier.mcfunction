summon zombie ~ ~ ~ {ActiveEffects:[{Amplifier:1b,Duration:7,Id:14,ShowParticles:0b}],Attributes:[{Base:8,Name:"generic.max_health"},{Base:1,Name:"generic.attack_damage"},{Base:10,Name:"generic.follow_range"}],HandItems:[{components:{"minecraft:unbreakable":{}},count:1,id:"minecraft:wooden_sword"},{}],Health:8.0f,Silent:1b,Tags:["enemy","greensoldier_ai","noinvis","hookshotable"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:49,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["greensoldier","enemyCode","enemy"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 49

#LINK THEM
execute store result score @e[type=armor_stand,tag=greensoldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=greensoldier_ai,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1