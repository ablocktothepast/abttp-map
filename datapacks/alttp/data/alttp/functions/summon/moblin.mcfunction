summon drowned ~ ~ ~ {Health:20f,Attributes:[{Name:generic.max_health,Base:20},{Name:generic.knockback_resistance,Base:1}],Silent:1b,Tags:["enemy","moblindr","hookshotable"],HandItems:[{id:"minecraft:trident",Count:1b,tag:{Unbreakable:1b}},{}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moblin","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:77}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 77

#LINK THEM
execute store result score @e[type=armor_stand,tag=moblin,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=drowned,tag=moblindr,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1