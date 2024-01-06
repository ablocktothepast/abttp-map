execute if score thaddeusmove2 gameplay matches 1..2 as @e[tag=thaddeus] at @s facing entity @e[type=marker,tag=thaddeusmove2,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.25
execute if score thaddeusmove2 gameplay matches 1..2 as @e[tag=thaddeus] at @s if entity @e[type=marker,tag=thaddeusmove2,tag=end,distance=..0.21] run tp @s -410 -8 680 -90 0
execute if score thaddeusmove2 gameplay matches 1..2 as @e[tag=thaddeus] at @s if entity @e[type=marker,tag=thaddeusmove2,tag=end,distance=..0.21] run scoreboard players set thaddeusmove2 gameplay 1
execute if score thaddeusmove2 gameplay matches 1..2 as @e[tag=thaddeus] at @s run kill @e[type=marker,tag=thaddeusmove2,limit=1,sort=nearest,distance=..0.17]

execute if score thaddeusmove2 gameplay matches 2 as @e[tag=thaddeus] at @s anchored eyes facing entity @e[type=marker,tag=thaddeusmove2,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score thaddeusmove2 gameplay matches 2 as @e[tag=thaddeus] at @s anchored eyes facing entity @e[type=marker,tag=thaddeusmove2,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score thaddeusmove2 gameplay matches 1 run setblock -405 -10 680 air
execute if score thaddeusmove2 gameplay matches 1 run function alttp:npcs/town
execute if score thaddeusmove2 gameplay matches 1 as @e[type=item_display,tag=thaddeus] run function animated_java:thaddeus/animations/running/stop
execute if score thaddeusmove2 gameplay matches 1 as @e[type=item_display,tag=thaddeus] run function animated_java:thaddeus/animations/hovering/play
execute if score thaddeusmove2 gameplay matches 1 run scoreboard players set thaddeusmove2 gameplay 0

execute if score amarawalk gameplay matches 1..2 as @e[tag=amara] at @s facing entity @e[type=marker,tag=amarawalk,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.25
execute if score amarawalk gameplay matches 1..2 as @e[tag=amara] at @s if entity @e[type=marker,tag=amarawalk,tag=end,distance=..0.21] run tp @s -338 4 677 -62 0
execute if score amarawalk gameplay matches 1..2 as @e[tag=amara] at @s if entity @e[type=marker,tag=amarawalk,tag=end,distance=..0.21] run scoreboard players set amarawalk gameplay 1
execute if score amarawalk gameplay matches 1..2 as @e[tag=amara] at @s run kill @e[type=marker,tag=amarawalk,limit=1,sort=nearest,distance=..0.17]

execute if score amarawalk gameplay matches 2 as @e[tag=amara] at @s anchored eyes facing entity @e[type=marker,tag=amarawalk,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score amarawalk gameplay matches 2 as @e[tag=amara] at @s anchored eyes facing entity @e[type=marker,tag=amarawalk,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score amarawalk gameplay matches 1 run setblock -342 2 675 air
execute if score amarawalk gameplay matches 1 run function alttp:npcs/town
execute if score amarawalk gameplay matches 1 as @e[type=item_display,tag=amara] run function animated_java:amara/animations/running/stop
execute if score amarawalk gameplay matches 1 as @e[type=item_display,tag=amara] run function animated_java:amara/animations/idle/play
execute if score amarawalk gameplay matches 1 run scoreboard players set amarawalk gameplay 0

tp @e[type=armor_stand,tag=unclestart] -309 -2 609 133 0