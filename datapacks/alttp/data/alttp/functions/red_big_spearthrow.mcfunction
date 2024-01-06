summon armor_stand ~ ~ ~ {Pose:{Head:[90f,0f,0f]},Marker:1b,Invisible:1b,Tags:["enemy","red_big_spear","nolifesteal"],ArmorItems:[{},{},{},{id:"minecraft:trident",Count:1b}]}

execute as @e[type=armor_stand,tag=red_big_spear,tag=!posed] run tp @s ~ ~ ~ ~ ~
tag @e[type=armor_stand,tag=red_big_spear] add posed