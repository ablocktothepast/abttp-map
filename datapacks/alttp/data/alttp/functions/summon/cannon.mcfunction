summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["cannon","enemyCode","enemy","nolifesteal"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:223}},{}],HurtByTimestamp:22}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 22