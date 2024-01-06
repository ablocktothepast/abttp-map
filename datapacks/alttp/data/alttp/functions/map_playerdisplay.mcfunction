function alttp:mapmath

execute unless entity @e[type=armor_stand,tag=map_player] run summon armor_stand 132 -62 3 {Invisible:1b,Marker:1b,Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:66}},{}],Tags:["map_player"],NoGravity:1b}

#OFFSET CORRECTION
#scoreboard players set offsetmult_x mapmath 1

#CALCULATE X
scoreboard players set 5 map_playermath 5
scoreboard players operation 5 map_playermath *= x mapmath
execute store result score distanceX map_playermath run scoreboard players get 5 map_playermath
#We now have the distance (x) from the bottom-left corner (scaled by 100x)
#We now take the bottom-left corner's x coordinate (scaled by 100x) and remove the x distance from that
scoreboard players set cornerX map_playermath 135000
scoreboard players operation cornerX map_playermath -= distanceX map_playermath
execute store result score resultX map_playermath run scoreboard players get cornerX map_playermath

#CALCULATE Z
scoreboard players set 5 map_playermath 5
scoreboard players operation 5 map_playermath *= z mapmath
execute store result score distanceZ map_playermath run scoreboard players get 5 map_playermath
#We now have the distance (z) from the bottom-left corner (scaled by 100x)
#We now take the bottom-left corner's z coordinate (scaled by 100x) and remove the z distance from that
scoreboard players set cornerZ map_playermath 6000
scoreboard players operation cornerZ map_playermath -= distanceZ map_playermath
execute store result score resultZ map_playermath run scoreboard players get cornerZ map_playermath

#APPLY RESULT TO MARKER
execute store result entity @e[type=armor_stand,tag=map_player,limit=1] Pos[0] double 0.001 run scoreboard players get resultX map_playermath
execute store result entity @e[type=armor_stand,tag=map_player,limit=1] Pos[2] double 0.001 run scoreboard players get resultZ map_playermath
execute store result score posedX map_playermath run data get entity @e[type=armor_stand,tag=map_player,limit=1] Pos[0] 100
execute store result score posedZ map_playermath run data get entity @e[type=armor_stand,tag=map_player,limit=1] Pos[2] 100