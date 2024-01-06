summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["zol","enemyCode","enemy","yellow"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:132}
summon silverfish ~ ~ ~ {Silent:1b,Health:25f,Tags:["enemy","zolsf","hookshotable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25},{Name:generic.attack_damage,Base:7}]}

#LINK THEM
execute store result score @e[type=armor_stand,tag=zol,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=zolsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1