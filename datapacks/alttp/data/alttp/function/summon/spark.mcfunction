summon armor_stand ~ ~0.5 ~ {HurtByTimestamp:113,Invisible:1b,Marker:1b,Passengers:[{Tags:["enemy","sparkdi"],id:"minecraft:item_display",item:{components:{"minecraft:custom_model_data":241},count:1,id:"minecraft:carrot_on_a_stick"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.1f,-0.5f]}}],Tags:["spark","enemyCode","enemy","nolifesteal"]}

scoreboard players set @e[type=armor_stand,tag=enemyCode,limit=1,sort=nearest] eid 113

tp @e[type=armor_stand,tag=spark,tag=!posed] ~ ~0.5 ~ 90 0
tag @e[type=armor_stand,tag=spark] add posed