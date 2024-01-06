execute at @s rotated ~90 0 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["npc","unclestart"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:285}},{}]}
execute at @s rotated ~90 0 run tp @e[type=armor_stand,tag=unclestart] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=unclestart] add npcfocus
function animated_java:uncle_alphon/remove/this