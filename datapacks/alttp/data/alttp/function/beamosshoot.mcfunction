summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{count:1,id:"minecraft:end_rod"}],Invisible:1b,Marker:1b,Pose:{Head:[30.0f,0.0f,0.0f]},Tags:["enemy","beamoslaser","ms_laser","nolifesteal"]}

execute as @e[type=armor_stand,tag=beamoslaser,tag=!posed] run tp @s ~ ~ ~ ~ ~
tag @e[type=armor_stand,tag=beamoslaser] add posed