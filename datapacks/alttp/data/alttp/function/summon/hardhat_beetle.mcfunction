summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:54,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["hardhat_beetle","enemyCode","enemy"]}
summon silverfish ~ ~ ~ {Silent:1b,Tags:["enemy","hardhat_beetlesf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:999},{Name:generic.knockback_resistance,Base:0},{Name:generic.attack_knockback,Base:3}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 54

#LINK THEM
execute store result score @e[type=armor_stand,tag=hardhat_beetle,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=hardhat_beetlesf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1