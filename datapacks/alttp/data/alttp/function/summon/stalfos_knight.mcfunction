summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":205},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:115,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["stalfos_knight","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Silent:1b,Health:100f,Tags:["enemy","stalfos_knightzo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:75},{Name:generic.attack_damage,Base:0}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 115

#LINK THEM
execute store result score @e[type=armor_stand,tag=stalfos_knight,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=stalfos_knightzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1