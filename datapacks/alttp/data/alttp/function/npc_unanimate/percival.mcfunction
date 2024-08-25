execute if score # gameplay matches ..14 at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":292},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","percival"]}
execute if score # gameplay matches 15.. at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":306},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","percival"]}
execute at @s run tp @e[type=armor_stand,tag=percival] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=percival] add npcfocus
function animated_java:percival/remove/this