execute store result score result rand run random value 1..4
execute if score result rand matches 1..3 run tp @e[type=zombie,tag=link_b] ~ ~ ~ facing entity @p feet

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["enemy","stalfosboner","nolifesteal"],Pose:{Head:[0f,1f,0f]},ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b}]}

execute as @e[type=armor_stand,tag=stalfosboner,tag=!posed] run tp @s ~ ~ ~ ~ ~
execute if score result rand matches 1..3 as @e[type=armor_stand,tag=stalfosboner,tag=!posed] run tp @s ~ ~ ~ facing entity @p feet
tag @e[type=armor_stand,tag=stalfosboner,tag=!posed] add posed