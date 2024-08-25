scoreboard players set @s enemydummy 60

execute unless entity @s[tag=icerodfrozen] run summon armor_stand ~ ~1.5 ~ {HandItems:[{components:{"minecraft:custom_model_data":163},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["enemy","wizzrobethunder","nolifesteal"]}
execute as @e[type=armor_stand,tag=wizzrobethunder,tag=!posed] facing entity @p feet run tp @s ~ ~1.5 ~ ~ ~
tag @e[type=armor_stand,tag=wizzrobethunder,tag=!posed] add posed