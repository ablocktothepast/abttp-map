summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:96,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["red_eyegore","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Invulnerable:0b,Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.max_health,Base:30}],Health:30f,Silent:1b,Tags:["enemy","red_eyegorezo"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 96

scoreboard players set @e[type=armor_stand,tag=red_eyegore,limit=1,sort=nearest] reye_hp 2

execute store result score @e[type=armor_stand,tag=red_eyegore,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=red_eyegorezo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1