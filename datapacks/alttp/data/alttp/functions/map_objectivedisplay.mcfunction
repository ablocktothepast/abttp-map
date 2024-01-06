function alttp:mapmathobjective

execute unless entity @e[type=armor_stand,tag=map_objective] run summon armor_stand 132 -62 3 {Invisible:1b,Marker:1b,Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:67}},{}],Tags:["map_objective"],NoGravity:1b}

#CALCULATE X
scoreboard players set 5 map_objectivemath 5
scoreboard players operation 5 map_objectivemath *= x mapmath_objective
execute store result score distanceX map_objectivemath run scoreboard players get 5 map_objectivemath
#We now have the distance (x) from the bottom-left corner (scaled by 100x)
#We now take the bottom-left corner's x coordinate (scaled by 100x) and remove the x distance from that
scoreboard players set cornerX map_objectivemath 135000
scoreboard players operation cornerX map_objectivemath -= distanceX map_objectivemath
execute store result score resultX map_objectivemath run scoreboard players get cornerX map_objectivemath

#CALCULATE Z
scoreboard players set 5 map_objectivemath 5
scoreboard players operation 5 map_objectivemath *= z mapmath_objective
execute store result score distanceZ map_objectivemath run scoreboard players get 5 map_objectivemath
#We now have the distance (z) from the bottom-left corner (scaled by 100x)
#We now take the bottom-left corner's z coordinate (scaled by 100x) and remove the z distance from that
scoreboard players set cornerZ map_objectivemath 6000
scoreboard players operation cornerZ map_objectivemath -= distanceZ map_objectivemath
execute store result score resultZ map_objectivemath run scoreboard players get cornerZ map_objectivemath

#APPLY RESULT TO MARKER
execute store result entity @e[type=armor_stand,tag=map_objective,limit=1] Pos[0] double 0.001 run scoreboard players get resultX map_objectivemath
execute store result entity @e[type=armor_stand,tag=map_objective,limit=1] Pos[2] double 0.001 run scoreboard players get resultZ map_objectivemath
execute store result score posedX map_objectivemath run data get entity @e[type=armor_stand,tag=map_objective,limit=1] Pos[0] 100
execute store result score posedZ map_objectivemath run data get entity @e[type=armor_stand,tag=map_objective,limit=1] Pos[2] 100