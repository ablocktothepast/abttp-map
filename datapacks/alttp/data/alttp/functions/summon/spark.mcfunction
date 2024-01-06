summon armor_stand ~ ~0.5 ~ {Marker:1b,Invisible:1b,Tags:["spark","enemyCode","enemy","nolifesteal"],Passengers:[{id:"minecraft:item_display",Tags:["enemy","sparkdi"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,-0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:241}}}],HurtByTimestamp:113}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 113

tp @e[type=armor_stand,tag=spark,tag=!posed] ~ ~0.5 ~ 90 0
tag @e[type=armor_stand,tag=spark] add posed