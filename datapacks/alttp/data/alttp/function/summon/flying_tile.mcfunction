summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":112},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:37,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["flying_tile","enemyCode","enemy","nolifesteal"]}
summon silverfish ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Health:1f,Tags:["enemy","tilesf","nolifesteal"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 37

#LINK THEM
execute store result score @e[type=armor_stand,tag=flying_tile,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=tilesf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1