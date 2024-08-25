execute at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":313},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","alden"]}
execute at @s run tp @e[type=armor_stand,tag=alden] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=alden] add npcfocus
function animated_java:alden/remove/this