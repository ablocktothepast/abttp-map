summon skeleton ~ ~ ~ {ActiveEffects:[{Amplifier:1b,Duration:7,Id:14,ShowParticles:0b}],Attributes:[{Base:8,Name:"generic.max_health"},{Base:10,Name:"generic.follow_range"},{Base:1,Name:"generic.attack_damage"}],HandItems:[{count:1,id:"minecraft:bow"},{}],Health:8.0f,Silent:1b,Tags:["enemy","bluebowsoldier_ai","hookshotable"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:14,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["bluebowsoldier","enemyCode","enemy"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 14

#LINK THEM
execute store result score @e[type=armor_stand,tag=bluebowsoldier,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=skeleton,tag=bluebowsoldier_ai,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1