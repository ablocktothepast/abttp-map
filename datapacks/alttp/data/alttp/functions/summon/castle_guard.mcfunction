summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["castleguard","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:32}},{}],HurtByTimestamp:23}
summon wandering_trader ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:99999,ShowParticles:0b}],Tags:["enemy","castleguardwa"]}
summon marker ~ ~ ~ {Tags:["enemy","castleguardma"]}
summon text_display ~ ~ ~ {billboard:"center",Tags:["enemy","castleguardte"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},text:'{"text":"❗","color":"yellow"}',background:16711680}
summon text_display ~ ~ ~ {billboard:"center",Tags:["enemy","castleguardqu"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},text:'{"text":"❓","color":"yellow"}',background:16711680}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 23

#LINK THEM
execute store result score @e[type=armor_stand,tag=castleguard,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=wandering_trader,tag=castleguardwa,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=castleguardma,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=text_display,tag=castleguardte,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=text_display,tag=castleguardqu,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1