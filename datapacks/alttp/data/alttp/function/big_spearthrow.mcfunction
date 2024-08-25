summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{count:1,id:"minecraft:trident"}],Invisible:1b,Marker:1b,Pose:{Head:[90.0f,0.0f,0.0f]},Tags:["enemy","big_spear","nolifesteal"]}

execute as @e[type=armor_stand,tag=big_spear,tag=!posed] run tp @s ~ ~ ~ ~ ~
tag @e[type=armor_stand,tag=big_spear] add posed