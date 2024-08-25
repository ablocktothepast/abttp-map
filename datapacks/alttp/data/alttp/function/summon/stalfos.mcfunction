summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":172},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:116,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["stalfos","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Attributes:[{Name:generic.movement_speed,Base:0.25},{Name:generic.max_health,Base:12}],Health:12f,Silent:1b,Tags:["enemy","stalfoszo"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 116

execute store result score @e[type=armor_stand,tag=stalfos,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=stalfoszo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1