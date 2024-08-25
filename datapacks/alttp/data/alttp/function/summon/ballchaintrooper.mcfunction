summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":24},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:135,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["enemy","enemyCode","ballchaintrooper"]}
summon zombie ~ ~ ~ {Silent:1b,Health:50f,Tags:["enemy","ballchaintrooperzo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 135

#LINK THEM
execute store result score @e[type=armor_stand,tag=ballchaintrooper,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=ballchaintrooperzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1