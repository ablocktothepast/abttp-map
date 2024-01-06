execute at @s run summon item_display ~ ~ ~ {Tags:["npc","neal"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:289}}}
execute at @s run tp @e[type=item_display,tag=neal] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=neal] add npcfocus
function animated_java:neal/remove/this