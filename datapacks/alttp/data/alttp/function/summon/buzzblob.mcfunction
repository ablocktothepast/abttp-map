summon item_display ~ ~ ~ {Tags:["buzzblob","enemyCode","enemy"],item:{components:{"minecraft:custom_model_data":26},count:1,id:"minecraft:carrot_on_a_stick"},item_display:"thirdperson_righthand",transformation:{left_rotation:[1.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1f,1f],translation:[-0.375f,0.75f,0.125f]}}
summon silverfish ~ ~ ~ {Silent:1b,Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.2}],Health:20f,Tags:["enemy","buzzblobsf","hookshotable"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:7,ShowParticles:0b}]}
scoreboard players set @e[type=item_display,tag=buzzblob,limit=1,sort=nearest] enemydummy 0

scoreboard players set @e[type=item_display,tag=enemyCode,limit=1,sort=nearest] eid 21

execute store result score @e[type=item_display,tag=buzzblob,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=silverfish,tag=buzzblobsf,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1