execute at @s rotated ~90 0 run summon armor_stand ~ ~ ~ {HandItems:[{components:{"minecraft:custom_model_data":285},count:1,id:"minecraft:carrot_on_a_stick"},{}],Invisible:1b,Marker:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Tags:["npc","unclestart"]}
execute at @s rotated ~90 0 run tp @e[type=armor_stand,tag=unclestart] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=unclestart] add npcfocus
function animated_java:uncle_alphon/remove/this