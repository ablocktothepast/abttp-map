scoreboard players add slot bm 1
execute if score slot bm matches 0 run scoreboard players remove slot bm 1
execute if score slot bm matches 7 run scoreboard players remove slot bm 1
execute if score slot bm matches 14 run scoreboard players remove slot bm 1
execute if score slot bm matches 21 run scoreboard players remove slot bm 1
execute if score slot bm matches 28 run scoreboard players remove slot bm 1
scoreboard players set d_cool bm 1

execute if score slot bm matches 6 run schedule function alttp:bm_selector_diamond 2t
execute if score slot bm matches 13 run schedule function alttp:bm_selector_diamond 2t
execute if score slot bm matches 20 run schedule function alttp:bm_selector_diamond 2t
execute if score slot bm matches 27 run schedule function alttp:bm_selector_diamond 2t