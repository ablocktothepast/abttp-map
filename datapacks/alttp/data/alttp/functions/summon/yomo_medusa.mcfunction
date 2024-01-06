summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["yomomedusa","enemyCode","enemy","nolifesteal"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:121}},{}],HurtByTimestamp:129}
summon marker ~ ~ ~ {Tags:["yomomedusatracker"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 129

#LINK THEM
execute store result score @e[type=armor_stand,tag=yomomedusa,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=marker,tag=yomomedusatracker,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1