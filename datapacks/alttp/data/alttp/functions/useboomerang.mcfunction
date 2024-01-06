execute unless score . thirdperson matches 1 at @p run summon armor_stand ~ ~0.8 ~ {Pose:{Head:[180f,0f,0f]},Tags:["boomerang"],Invulnerable:1b,Invisible:1b,Small:1b}
execute unless score . thirdperson matches 1 at @p run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6}}],Pose:{Head:[0f,0f,1f]},Tags:["boomerangmodel"],Marker:1b,Invisible:1b,Small:1b}
execute unless score . thirdperson matches 1 as @e[type=armor_stand,tag=boomerang,limit=1,sort=nearest] at @p run tp @s ~ ~0.8 ~ ~15 ~

execute if score . thirdperson matches 1 at @e[type=armor_stand,tag=thirdperson_player] run summon armor_stand ~ ~0.8 ~ {Pose:{Head:[180f,0f,0f]},Tags:["boomerang"],Invulnerable:1b,Invisible:1b,Small:1b}
execute if score . thirdperson matches 1 at @e[type=armor_stand,tag=thirdperson_player] run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6}}],Pose:{Head:[0f,0f,1f]},Tags:["boomerangmodel"],Marker:1b,Invisible:1b,Small:1b}
execute if score . thirdperson matches 1 as @e[type=armor_stand,tag=boomerang,limit=1,sort=nearest] at @e[type=armor_stand,tag=thirdperson_player] rotated as @p run tp @s ~ ~0.8 ~ ~15 ~

scoreboard players set @s spw_c_2 1
scoreboard players set @s rightclick 0
scoreboard players add @p st_boomerang 1