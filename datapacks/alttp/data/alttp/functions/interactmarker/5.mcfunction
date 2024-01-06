execute if score # gameplay matches 9 if score elisabethfound gameplay matches 0 run tp @e[tag=elisabeth] -306 -2 561 43 0
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 0 run tag @e[tag=elisabeth] add npcfocus
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 0 run scoreboard players set id dialogue 51
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 0 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/was_found/play
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 0 run scoreboard players set angle dialogue 20
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 0 run function alttp:dialogue_start

execute if score # gameplay matches 9 if score elisabethfound gameplay matches 1 run tp @e[tag=elisabeth] -306 -2 561 43 0
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 1 run tag @e[tag=elisabeth] add npcfocus
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 1 run scoreboard players set id dialogue 62
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 1 run scoreboard players set angle dialogue 20
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 1 run function alttp:dialogue_start