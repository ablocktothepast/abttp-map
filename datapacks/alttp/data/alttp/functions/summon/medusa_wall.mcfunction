summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["medusa","enemyCode","enemy","wall","nolifesteal"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:89}},{}],HurtByTimestamp:75}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 75

tp @e[type=armor_stand,tag=medusa,tag=!posed] ~ ~ ~ ~ 0
tag @e[type=armor_stand,tag=medusa] add posed