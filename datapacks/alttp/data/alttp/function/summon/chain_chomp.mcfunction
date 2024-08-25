summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":32},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:24,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["chain_chomp","enemyCode","enemy"]}
summon marker ~ ~ ~ {Tags:["enemy","chain_chomp_pole"]}
summon silverfish ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["enemy","chain_chompsf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 24

#LINK THEM
execute store result score @e[type=armor_stand,tag=chain_chomp,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=chain_chompsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=chain_chomp_pole,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1