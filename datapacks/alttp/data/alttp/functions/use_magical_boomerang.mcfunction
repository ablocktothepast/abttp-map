summon armor_stand ~ ~ ~ {Pose:{Head:[180f,0f,0f]},Tags:["magicalboomerang"],Invulnerable:1b,Invisible:1b,Small:1b}
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6}}],Pose:{Head:[0f,0f,1f]},Tags:["magicalboomerangmodel"],Marker:1b,Invisible:1b,Small:1b}
execute as @e[type=armor_stand,tag=magicalboomerang,limit=1,sort=nearest] at @p run tp @s ~ ~0.8 ~ ~15 ~
scoreboard players set @s spw_c_2 1
scoreboard players set @s rightclick 0