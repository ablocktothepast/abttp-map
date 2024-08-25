summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":141},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:36,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["fire_wizzrobe","enemyCode","enemy"]}
summon zombie ~ ~ ~ {Silent:1b,Health:20f,Tags:["enemy","fire_wizzrobezo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20}]}
summon silverfish ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Invulnerable:1b,Tags:["enemy","fire_wizzrobesf"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 36

#LINK THEM
execute store result score @e[type=armor_stand,tag=fire_wizzrobe,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=fire_wizzrobezo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=fire_wizzrobesf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1