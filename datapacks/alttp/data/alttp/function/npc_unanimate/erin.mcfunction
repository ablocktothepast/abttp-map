execute at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":312},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","erin"]}
execute at @s run tp @e[type=armor_stand,tag=erin] -292 -9 644 ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=erin] add npcfocus
kill @e[type=marker,tag=erin_marker]
function animated_java:erin/remove/this