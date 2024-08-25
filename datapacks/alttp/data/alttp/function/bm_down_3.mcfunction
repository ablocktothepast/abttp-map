execute store result score slot_ bm run scoreboard players get slot bm

execute if score slot_ bm matches 0..2 run scoreboard players add slot bm 1
execute if score slot_ bm matches 3 if score km4 bm matches 1 run scoreboard players add km_scrollindex bm 1
execute if score slot_ bm matches 3 if score km4 bm matches 1 run function alttp:bm_km_scrollupdate

execute if score slot_ bm matches 0..2 if score slot bm matches 1 if score km1 bm matches 0 run scoreboard players set slot_ bm 8
execute if score slot_ bm matches 0..2 if score slot bm matches 2 if score km2 bm matches 0 run scoreboard players set slot_ bm 8
execute if score slot_ bm matches 0..2 if score slot bm matches 3 if score km3 bm matches 0 run scoreboard players set slot_ bm 8
execute if score slot_ bm matches 8 run scoreboard players remove slot bm 1

execute unless score slot bm = slot_ bm run function alttp:bm_km_description

scoreboard players set s_cool bm 1