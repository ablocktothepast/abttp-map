execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["npc","alden"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:313}},{}]}
execute at @s run tp @e[type=armor_stand,tag=alden] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=alden] add npcfocus
function animated_java:alden/remove/this