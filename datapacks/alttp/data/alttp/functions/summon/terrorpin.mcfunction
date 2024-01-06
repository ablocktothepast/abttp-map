summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["terrorpin","enemyCode","enemy","nostun"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:81}},{}],HurtByTimestamp:120}
summon silverfish ~ ~ ~ {Silent:1b,Health:25f,Tags:["enemy","terrorpinsf","nostun"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 120

#LINK THEM
execute store result score @e[type=armor_stand,tag=terrorpin,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=terrorpinsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1