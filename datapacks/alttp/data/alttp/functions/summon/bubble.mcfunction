summon armor_stand ~ ~ ~ {Pose:{RightArm:[0f,0f,0f]},Rotation:[45F,0F],Marker:1b,Invisible:1b,Tags:["bubble","enemyCode","enemy","nolifesteal"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:254}},{}],HurtByTimestamp:18}
summon armor_stand ~ ~ ~ {Pose:{RightArm:[0f,0f,0f]},Rotation:[45F,0F],Marker:1b,Invisible:1b,Tags:["bubble_balls","enemy","nolifesteal"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:255}},{}]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 18

#LINK THEM
execute store result score @e[type=armor_stand,tag=bubble,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
execute store result score @e[type=armor_stand,tag=bubble_balls,limit=1,sort=nearest] enemylink run scoreboard players get .global enemylink
scoreboard players add .global enemylink 1