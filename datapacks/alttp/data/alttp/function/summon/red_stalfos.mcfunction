summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":175},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:100,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["red_stalfos","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Attributes:[{Name:generic.movement_speed,Base:0.27},{Name:generic.max_health,Base:22}],Health:22f,Silent:1b,Tags:["enemy","red_stalfoszo"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 100

execute store result score @e[type=armor_stand,tag=red_stalfos,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=red_stalfoszo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1