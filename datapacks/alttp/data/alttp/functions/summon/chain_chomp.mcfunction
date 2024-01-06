summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["chain_chomp","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:24}
summon marker ~ ~ ~ {Tags:["enemy","chain_chomp_pole"]}
summon silverfish ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["enemy","chain_chompsf"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 24

#LINK THEM
execute store result score @e[type=armor_stand,tag=chain_chomp,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=chain_chompsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=chain_chomp_pole,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1