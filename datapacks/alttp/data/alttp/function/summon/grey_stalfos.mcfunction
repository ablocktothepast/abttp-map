summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":195},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:51,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["grey_stalfos","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Silent:1b,Health:30f,Tags:["enemy","grey_stalfoszo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:15}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 51

#LINK THEM
execute store result score @e[type=armor_stand,tag=grey_stalfos,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=grey_stalfoszo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1