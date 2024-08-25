summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:76,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["mini_moldorm","enemyCode","enemy","hookshotable"]}
summon silverfish ~ ~ ~ {Silent:1b,Health:12f,Tags:["enemy","mini_moldormsf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:99999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.attack_damage,Base:3}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 76

#LINK THEM
execute store result score @e[type=armor_stand,tag=mini_moldorm,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=mini_moldormsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1