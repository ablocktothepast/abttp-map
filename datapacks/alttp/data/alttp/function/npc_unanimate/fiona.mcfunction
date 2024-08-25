execute if score # gameplay matches ..14 at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":294},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","fiona"]}
execute if score # gameplay matches 15.. at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":311},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","fiona"]}
execute at @s run tp @e[type=armor_stand,tag=fiona] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=fiona] add npcfocus
function animated_java:fiona/remove/this