summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":187},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:128,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["yellow_stalfos","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Silent:1b,Health:30f,Tags:["enemy","yellow_stalfoszo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.follow_range,Base:12}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 128

#LINK THEM
execute store result score @e[type=armor_stand,tag=yellow_stalfos,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=yellow_stalfoszo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1