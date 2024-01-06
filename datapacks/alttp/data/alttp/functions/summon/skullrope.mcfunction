summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["skullrope","enemyCode","enemy","hookshotable"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],Pose:{RightArm:[0f,0f,0f]},HurtByTimestamp:108}
summon zombie ~ ~ ~ {Silent:1b,Health:12f,Tags:["enemy","skullropezo"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.attack_damage,Base:2}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 108

scoreboard players set @e[type=armor_stand,tag=skullrope,limit=1,sort=nearest] enemydummy 1

execute store result score @e[type=armor_stand,tag=skullrope,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=skullropezo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1