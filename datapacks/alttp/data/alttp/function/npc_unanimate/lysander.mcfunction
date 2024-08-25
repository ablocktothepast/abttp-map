execute if score # gameplay matches ..14 at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":295},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","lysander"]}
execute if score # gameplay matches 15.. at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":307},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","lysander"]}
execute at @s run tp @e[type=armor_stand,tag=lysander] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=lysander] add npcfocus
function animated_java:lysander/remove/this