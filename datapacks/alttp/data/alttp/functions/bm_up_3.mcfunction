execute store result score slot_ bm run scoreboard players get slot bm

execute if score slot_ bm matches 1..3 run scoreboard players remove slot bm 1
execute if score slot_ bm matches 0 if score km_scrollindex bm matches 1.. run scoreboard players remove km_scrollindex bm 1
execute if score slot_ bm matches 0 run function alttp:bm_km_scrollupdate

execute unless score slot bm = slot_ bm run function alttp:bm_km_description

scoreboard players set w_cool bm 1