summon armor_stand ~ ~0.3 ~ {Marker:1b,Invisible:1b,Tags:["4","enemy","rollingspiketrap","enemyCode"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:22}},{}],Pose:{RightArm:[0f,90f,0f]}}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 136