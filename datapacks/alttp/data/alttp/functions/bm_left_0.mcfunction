scoreboard players remove slot bm 1
execute if score slot bm matches -1 run scoreboard players add slot bm 1
execute if score slot bm matches 6 run scoreboard players add slot bm 1
execute if score slot bm matches 13 run scoreboard players add slot bm 1
execute if score slot bm matches 20 run scoreboard players add slot bm 1
execute if score slot bm matches 27 run scoreboard players add slot bm 1
scoreboard players set a_cool bm 1

execute if score slot bm matches 5 run schedule function alttp:bm_selector_normal 2t
execute if score slot bm matches 12 run schedule function alttp:bm_selector_normal 2t
execute if score slot bm matches 19 run schedule function alttp:bm_selector_normal 2t
execute if score slot bm matches 26 run schedule function alttp:bm_selector_normal 2t