execute if score # gameplay matches ..12 at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["npc","amara"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:292}},{}]}
execute if score # gameplay matches 13.. at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["npc","amara"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:308}},{}]}
execute at @s run tp @e[type=armor_stand,tag=amara] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=amara] add npcfocus
function animated_java:amara/remove/this