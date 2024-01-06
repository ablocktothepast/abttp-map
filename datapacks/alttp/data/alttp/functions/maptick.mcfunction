gamemode adventure @s
clear @s

execute store result score x mapping run data get entity @s Pos[0] 10
execute store result score y mapping run data get entity @s Pos[1] 10
execute store result score z mapping run data get entity @s Pos[2] 10
execute store result score scroll mapping run data get entity @s SelectedItemSlot

execute if score scroll mapping matches 0 if score oldscroll mapping matches 8 run scoreboard players remove zoomlevel mapping 1
execute if score scroll mapping matches 0 if score oldscroll mapping matches 8 run execute store result score oldscroll mapping run scoreboard players get scroll mapping

execute if score scroll mapping matches 8 if score oldscroll mapping matches 0 run scoreboard players add zoomlevel mapping 1
execute if score scroll mapping matches 8 if score oldscroll mapping matches 0 run execute store result score oldscroll mapping run scoreboard players get scroll mapping

execute if score scroll mapping > oldscroll mapping run scoreboard players remove zoomlevel mapping 1
execute if score scroll mapping < oldscroll mapping run scoreboard players add zoomlevel mapping 1

execute store result score oldscroll mapping run scoreboard players get scroll mapping

execute if score zoomlevel mapping matches 9.. run scoreboard players set zoomlevel mapping 8
execute if score zoomlevel mapping matches ..0 run scoreboard players set zoomlevel mapping 1

execute at @s if score zoomlevel mapping matches 1 run tp @s ~ -60.8 ~
execute at @s if score zoomlevel mapping matches 2 run tp @s ~ -61.1 ~
execute at @s if score zoomlevel mapping matches 3 run tp @s ~ -61.4 ~
execute at @s if score zoomlevel mapping matches 4 run tp @s ~ -61.7 ~
execute at @s if score zoomlevel mapping matches 5 run tp @s ~ -62.0 ~
execute at @s if score zoomlevel mapping matches 6 run tp @s ~ -62.3 ~
execute at @s if score zoomlevel mapping matches 7 run tp @s ~ -62.6 ~
execute at @s if score zoomlevel mapping matches 8 run tp @s ~ -63 ~

execute at @s run tp @s ~ ~ ~ 180 90

execute as @e[type=item_frame,tag=mapframe] run data merge entity @s {ItemRotation:0b,Fixed:1b,Invisible:1b,Invulnerable:1b}

function alttp:map_playerdisplay
function alttp:map_objectivedisplay

effect give @s levitation 1 255 true

##Bossbar thingy
bossbar add map [{"text":"Scroll to zoom in/out"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]
bossbar set map visible true
bossbar set map players @p
bossbar set map color white
bossbar set map max 100
bossbar set map value 100

execute if score @s map_sneak matches 1.. run function alttp:mapping_stop