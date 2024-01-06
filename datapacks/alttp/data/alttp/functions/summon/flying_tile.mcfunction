summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["flying_tile","enemyCode","enemy","nolifesteal"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:112}},{}],HurtByTimestamp:37}
summon silverfish ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Health:1f,Tags:["enemy","tilesf","nolifesteal"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 37

#LINK THEM
execute store result score @e[type=armor_stand,tag=flying_tile,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=tilesf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1