execute at @s run summon item_display ~ ~ ~ {Tags:["npc","neal"],item:{components:{"minecraft:custom_model_data":289},count:1,id:"minecraft:carrot_on_a_stick"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.75f,0.75f,0.75f],translation:[0.0f,0.6f,0.0f]}}
execute at @s run tp @e[type=item_display,tag=neal] ~ ~ ~ ~ ~
execute if entity @s[tag=npcfocus] run tag @e[type=armor_stand,tag=neal] add npcfocus
function animated_java:neal/remove/this