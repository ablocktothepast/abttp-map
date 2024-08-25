#Summon them all
summon armor_stand ~2 ~ ~1 {HandItems:[{components:{"minecraft:custom_model_data":222},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:3,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["armosknight","enemyCode","enemy","ak1"]}
summon marker ~2 ~ ~1 {Tags:["enemy","armosknightma","ak1"]}
summon slime ~ ~ ~ {Silent:1b,Health:35f,Tags:["enemy","armosknightzo","ak1"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.attack_damage,Base:0}],Size:5}

summon armor_stand ~ ~ ~1 {HandItems:[{components:{"minecraft:custom_model_data":222},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:3,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["armosknight","enemyCode","enemy","ak2"]}
summon marker ~ ~ ~1 {Tags:["enemy","armosknightma","ak2"]}
summon slime ~ ~ ~ {Silent:1b,Health:35f,Tags:["enemy","armosknightzo","ak2"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.attack_damage,Base:0}],Size:5}

summon armor_stand ~-2 ~ ~1 {HandItems:[{components:{"minecraft:custom_model_data":222},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:3,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["armosknight","enemyCode","enemy","ak3"]}
summon marker ~-2 ~ ~1 {Tags:["enemy","armosknightma","ak3"]}
summon slime ~ ~ ~ {Silent:1b,Health:35f,Tags:["enemy","armosknightzo","ak3"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.attack_damage,Base:0}],Size:5}

summon armor_stand ~ ~ ~-1 {HandItems:[{components:{"minecraft:custom_model_data":222},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:3,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["armosknight","enemyCode","enemy","ak4"]}
summon marker ~ ~ ~-1 {Tags:["enemy","armosknightma","ak4"]}
summon slime ~ ~ ~ {Silent:1b,Health:35f,Tags:["enemy","armosknightzo","ak4"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.attack_damage,Base:0}],Size:5}

summon armor_stand ~2 ~ ~-1 {HandItems:[{components:{"minecraft:custom_model_data":222},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:3,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["armosknight","enemyCode","enemy","ak5"]}
summon marker ~2 ~ ~-1 {Tags:["enemy","armosknightma","ak5"]}
summon slime ~ ~ ~ {Silent:1b,Health:35f,Tags:["enemy","armosknightzo","ak5"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.attack_damage,Base:0}],Size:5}

summon armor_stand ~-2 ~ ~-1 {HandItems:[{components:{"minecraft:custom_model_data":222},count:1,id:"minecraft:carrot_on_a_stick"},{}],HurtByTimestamp:3,Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["armosknight","enemyCode","enemy","ak6"]}
summon marker ~-2 ~ ~-1 {Tags:["enemy","armosknightma","ak6"]}
summon slime ~ ~ ~ {Silent:1b,Health:35f,Tags:["enemy","armosknightzo","ak6"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.attack_damage,Base:0}],Size:5}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=6,sort=nearest] eid 3

#Summon middle marker
summon marker ~ ~ ~ {Tags:["enemy","enemyCode","armosknightmarker"],data:{id:4}}
scoreboard players set @e[type=marker,tag=enemyCode,limit=1,sort=nearest] eid 4

#Link them one by one
execute store result score @e[type=armor_stand,tag=armosknight,tag=ak1,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=armosknightma,tag=ak1,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=slime,tag=armosknightzo,tag=ak1,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1

execute store result score @e[type=armor_stand,tag=armosknight,tag=ak2,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=armosknightma,tag=ak2,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=slime,tag=armosknightzo,tag=ak2,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1

execute store result score @e[type=armor_stand,tag=armosknight,tag=ak3,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=armosknightma,tag=ak3,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=slime,tag=armosknightzo,tag=ak3,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1

execute store result score @e[type=armor_stand,tag=armosknight,tag=ak4,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=armosknightma,tag=ak4,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=slime,tag=armosknightzo,tag=ak4,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1

execute store result score @e[type=armor_stand,tag=armosknight,tag=ak5,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=armosknightma,tag=ak5,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=slime,tag=armosknightzo,tag=ak5,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1

execute store result score @e[type=armor_stand,tag=armosknight,tag=ak6,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=armosknightma,tag=ak6,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=slime,tag=armosknightzo,tag=ak6,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1