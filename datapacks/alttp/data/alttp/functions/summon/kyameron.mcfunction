summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["kyameron","enemyCode","enemy"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:77}},{}],HurtByTimestamp:67}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 67