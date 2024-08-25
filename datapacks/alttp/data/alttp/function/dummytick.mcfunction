#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=piglin,tag=dummypi] if score @s enemylink = @e[type=armor_stand,tag=dummy,limit=1,sort=nearest] enemylink run tag @s add link_b

data merge entity @s {Invisible:1b,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:86}},{}],Pose:{RightArm:[0f,0f,0f]}}

#LINKY
tp @e[type=piglin,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=piglin,tag=link_b] run kill @s

data merge entity @e[type=piglin,tag=link_b,limit=1] {NoAI:1b}

#DAMAGE COUNTING
execute store result score @s dummy run data get entity @e[type=piglin,tag=link_b,limit=1,sort=nearest] Health
scoreboard players set 999 dummy 999

scoreboard players operation 999 dummy -= @s dummy
execute unless score @s dummy matches 999 run function alttp:dummy_damage_indicator

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

execute if score @s enemydummy2 matches 1..3 run data merge entity @s {HandItems:[{components:{"minecraft:custom_model_data":87},count:1,id:"minecraft:carrot_on_a_stick"},{}]}
execute if score @s enemydummy2 matches 4..6 run data merge entity @s {HandItems:[{components:{"minecraft:custom_model_data":88},count:1,id:"minecraft:carrot_on_a_stick"},{}]}

data merge entity @e[type=piglin,tag=link_b,limit=1,sort=nearest] {Health:999f}

scoreboard players set 99999 dummy 99999
effect give @e[type=piglin,tag=link_b,limit=1,sort=nearest] invisibility infinite 1 true

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=piglin,tag=link_b] run tag @s add link_init
tag @e remove link_b
tag @e remove link_a