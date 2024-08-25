summon drowned ~ ~ ~ {ActiveEffects:[{Amplifier:1b,Duration:7,Id:14,ShowParticles:0b}],Attributes:[{Base:20,Name:"generic.max_health"},{Base:1,Name:"generic.knockback_resistance"}],HandItems:[{components:{"minecraft:unbreakable":{}},count:1,id:"minecraft:trident"},{}],Health:20.0f,Silent:1b,Tags:["enemy","moblindr","hookshotable"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:77,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["moblin","enemyCode","enemy"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 77

#LINK THEM
execute store result score @e[type=armor_stand,tag=moblin,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=drowned,tag=moblindr,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1