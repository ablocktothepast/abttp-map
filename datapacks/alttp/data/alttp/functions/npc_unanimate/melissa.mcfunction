execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["npc","melissa"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:290}},{}]}
execute at @s run tp @e[type=armor_stand,tag=melissa] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=melissa] add npcfocus
function animated_java:melissa/remove/this

schedule clear alttp:ajsummon/melissa_chance