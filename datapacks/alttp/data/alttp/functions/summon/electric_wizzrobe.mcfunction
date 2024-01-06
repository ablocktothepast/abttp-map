summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["electric_wizzrobe","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:153}},{}],HurtByTimestamp:32}
summon zombie ~ ~ ~ {Silent:1b,Health:30f,Tags:["enemy","electric_wizzrobezo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:30}]}
summon silverfish ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Invulnerable:1b,Tags:["enemy","electric_wizzrobesf"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 32

#LINK THEM
execute store result score @e[type=armor_stand,tag=electric_wizzrobe,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=electric_wizzrobezo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=electric_wizzrobesf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1