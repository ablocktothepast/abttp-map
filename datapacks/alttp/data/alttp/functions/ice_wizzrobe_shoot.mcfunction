scoreboard players set @s enemydummy 100

execute unless entity @s[tag=icerodfrozen] run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["enemy","wizzrobeice","nolifesteal"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:162}},{}]}
execute as @e[type=armor_stand,tag=wizzrobeice,tag=!posed] facing entity @p feet run tp @s ~ ~1.5 ~ ~ ~
tag @e[type=armor_stand,tag=wizzrobeice,tag=!posed] add posed