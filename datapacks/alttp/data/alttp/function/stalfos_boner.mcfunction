execute store result score result rand run random value 1..4
execute if score result rand matches 1..3 run tp @e[type=zombie,tag=link_b] ~ ~ ~ facing entity @p feet

summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{count:1,id:"minecraft:bone"}],Invisible:1b,Marker:1b,Pose:{Head:[0.0f,1.0f,0.0f]},Tags:["enemy","stalfosboner","nolifesteal"]}

execute as @e[type=armor_stand,tag=stalfosboner,tag=!posed] run tp @s ~ ~ ~ ~ ~
execute if score result rand matches 1..3 as @e[type=armor_stand,tag=stalfosboner,tag=!posed] run tp @s ~ ~ ~ facing entity @p feet
tag @e[type=armor_stand,tag=stalfosboner,tag=!posed] add posed