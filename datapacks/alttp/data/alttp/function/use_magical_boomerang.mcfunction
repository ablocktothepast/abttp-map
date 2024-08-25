summon armor_stand ~ ~ ~ {Pose:{Head:[180f,0f,0f]},Tags:["magicalboomerang"],Invulnerable:1b,Invisible:1b,Small:1b}
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":6},count:1,id:"minecraft:carrot_on_a_stick"}],Invisible:1b,Marker:1b,Pose:{Head:[0.0f,0.0f,1.0f]},Small:1b,Tags:["magicalboomerangmodel"]}
execute as @e[type=armor_stand,tag=magicalboomerang,limit=1,sort=nearest] at @p run tp @s ~ ~0.8 ~ ~15 ~
scoreboard players set @s spw_c_2 1
scoreboard players set @s rightclick 0