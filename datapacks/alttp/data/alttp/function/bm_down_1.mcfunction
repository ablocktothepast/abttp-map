execute store result score slot_ bm run scoreboard players get slot bm

execute if score slot_ bm matches 0 run scoreboard players set slot bm 2
execute if score slot_ bm matches 1 run scoreboard players set slot bm 3
execute if score slot_ bm matches 2 run scoreboard players set slot bm 4
execute if score slot_ bm matches 3 run scoreboard players set slot bm 7

scoreboard players set s_cool bm 1