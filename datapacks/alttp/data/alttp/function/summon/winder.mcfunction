summon marker ~ ~ ~ {Tags:["enemy","enemyCode","winder","nolifesteal"],HurtByTimestamp:126}
summon marker ~ ~ ~ {Tags:["enemy","winder2","nolifesteal"]}
summon marker ~ ~ ~ {Tags:["enemy","winder3","nolifesteal"]}
summon marker ~ ~ ~ {Tags:["enemy","winder4","nolifesteal"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":265},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["enemy","winderdi1","nolifesteal"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":265},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["enemy","winderdi2","nolifesteal"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":265},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["enemy","winderdi3","nolifesteal"]}
summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":265},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["enemy","winderdi4","nolifesteal"]}
summon marker ~ ~ ~ {Tags:["winderm1","enemy"]}
summon marker ~ ~ ~ {Tags:["winderm2","enemy"]}
summon marker ~ ~ ~ {Tags:["winderm3","enemy"]}
summon marker ~ ~ ~ {Tags:["winderm4","enemy"]}

scoreboard players set @e[type=marker,tag=enemyCode,limit=1,sort=nearest] eid 126

scoreboard players set @e[type=marker,tag=winderm1,limit=1,sort=nearest] enemydummy 90
scoreboard players set @e[type=marker,tag=winderm2,limit=1,sort=nearest] enemydummy 60
scoreboard players set @e[type=marker,tag=winderm3,limit=1,sort=nearest] enemydummy 30
scoreboard players set @e[type=marker,tag=winderm4,limit=1,sort=nearest] enemydummy 0

scoreboard players set @e[type=armor_stand,tag=winderdi1,limit=1,sort=nearest] enemydummy3 0
scoreboard players set @e[type=armor_stand,tag=winderdi2,limit=1,sort=nearest] enemydummy3 2
scoreboard players set @e[type=armor_stand,tag=winderdi3,limit=1,sort=nearest] enemydummy3 4
scoreboard players set @e[type=armor_stand,tag=winderdi4,limit=1,sort=nearest] enemydummy3 6

#LINK THEM
execute store result score @e[type=marker,tag=winder,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=winder2,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=winder3,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=winder4,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=winderdi1,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=winderdi2,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=winderdi3,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=winderdi4,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=winderm1,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=winderm2,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=winderm3,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=winderm4,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1