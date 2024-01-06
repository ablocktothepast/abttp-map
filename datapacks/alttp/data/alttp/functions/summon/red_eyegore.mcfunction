summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["red_eyegore","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:96}
summon zombie ~ ~ ~ {Invulnerable:0b,Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.max_health,Base:30}],Health:30f,Silent:1b,Tags:["enemy","red_eyegorezo"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 96

scoreboard players set @e[type=armor_stand,tag=red_eyegore,limit=1,sort=nearest] reye_hp 2

execute store result score @e[type=armor_stand,tag=red_eyegore,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=red_eyegorezo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1