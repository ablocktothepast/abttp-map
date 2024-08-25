summon item_display ~ ~ ~ {Tags:["deadrock","enemyCode","enemy"],item:{components:{"minecraft:custom_model_data":117},count:1,id:"minecraft:carrot_on_a_stick"},item_display:"fixed",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[-1.5f,1.5f,-1.5f],translation:[0.0f,0.375f,0.525f]}}
summon zombie ~ ~ ~ {Silent:1b,Health:25f,Tags:["enemy","deadrockzo"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:7,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25},{Name:generic.attack_damage,Base:6}]}

scoreboard players set @e[type=item_display,tag=deadrock,limit=1,sort=nearest] enemydummy 25

scoreboard players set @e[type=item_display,tag=enemyCode,limit=1,sort=nearest] eid 29

#LINK THEM
execute store result score @e[type=item_display,tag=deadrock,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=zombie,tag=deadrockzo,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1