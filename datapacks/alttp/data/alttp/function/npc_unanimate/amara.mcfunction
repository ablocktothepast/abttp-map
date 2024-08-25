execute if score # gameplay matches ..12 at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":292},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","amara"]}
execute if score # gameplay matches 13.. at @s run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":308},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","amara"]}
execute at @s run tp @e[type=armor_stand,tag=amara] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=amara] add npcfocus
function animated_java:amara/remove/this