execute if score # gameplay matches ..14 at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["npc","percival"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:292}},{}]}
execute if score # gameplay matches 15.. at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["npc","percival"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:306}},{}]}
execute at @s run tp @e[type=armor_stand,tag=percival] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=percival] add npcfocus
function animated_java:percival/remove/this