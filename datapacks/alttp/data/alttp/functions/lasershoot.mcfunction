summon armor_stand ~ ~-1.3 ~ {Marker:1b,Invisible:1b,Tags:["enemy","le_laser","ms_laser","nolifesteal"],Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}]}

scoreboard players set @s enemydummy2 60

execute as @e[type=armor_stand,tag=le_laser,tag=!posed] run tp @s ~ ~-1.3 ~ ~ ~
tag @e[type=armor_stand,tag=le_laser] add posed

playsound minecraft:alttp.fireball weather @a