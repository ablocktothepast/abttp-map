execute if score bertramwalk gameplay matches 1..2 as @e[tag=bertram] at @s facing entity @e[type=marker,tag=bertramwalk,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.1
execute if score bertramwalk gameplay matches 1..2 as @e[tag=bertram] at @s if entity @e[type=marker,tag=bertramwalk,tag=end,distance=..0.21] run tp @s -292 -5 665 -36 0
execute if score bertramwalk gameplay matches 1..2 as @e[tag=bertram] at @s if entity @e[type=marker,tag=bertramwalk,tag=end,distance=..0.21] run scoreboard players set bertramwalk gameplay 1
execute if score bertramwalk gameplay matches 1..2 as @e[tag=bertram] at @s run kill @e[type=marker,tag=bertramwalk,limit=1,sort=nearest,distance=..0.17]

execute if score bertramwalk gameplay matches 2 as @e[tag=bertram] at @s anchored eyes facing entity @e[type=marker,tag=bertramwalk,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score bertramwalk gameplay matches 2 as @e[tag=bertram] at @s anchored eyes facing entity @e[type=marker,tag=bertramwalk,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score bertramwalk gameplay matches 1 run setblock -286 -7 661 air
execute if score bertramwalk gameplay matches 1 run function alttp:npcs/town
execute if score bertramwalk gameplay matches 1 as @e[type=item_display,tag=bertram] run function animated_java:bertram/animations/walking/stop
execute if score bertramwalk gameplay matches 1 as @e[type=item_display,tag=bertram] run function animated_java:bertram/animations/idle/play
execute if score bertramwalk gameplay matches 1 run scoreboard players set bertramwalk gameplay 0