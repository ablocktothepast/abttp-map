summon armor_stand ~ ~-1.3 ~ {ArmorItems:[{},{},{},{count:1,id:"minecraft:air"}],Invisible:1b,Marker:1b,Pose:{Head:[30.0f,0.0f,0.0f]},Tags:["enemy","le_laser","ms_laser","nolifesteal"]}

scoreboard players set @s enemydummy2 60

execute as @e[type=armor_stand,tag=le_laser,tag=!posed] run tp @s ~ ~-1.3 ~ ~ ~
tag @e[type=armor_stand,tag=le_laser] add posed

playsound minecraft:alttp.fireball weather @a