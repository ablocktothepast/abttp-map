execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["npc","erin"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:312}},{}]}
execute at @s run tp @e[type=armor_stand,tag=erin] -292 -9 644 ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=erin] add npcfocus
kill @e[type=marker,tag=erin_marker]
function animated_java:erin/remove/this