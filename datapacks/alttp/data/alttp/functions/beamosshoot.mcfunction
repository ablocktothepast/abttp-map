summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["enemy","beamoslaser","ms_laser","nolifesteal"],Pose:{Head:[30f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}]}

execute as @e[type=armor_stand,tag=beamoslaser,tag=!posed] run tp @s ~ ~ ~ ~ ~
tag @e[type=armor_stand,tag=beamoslaser] add posed