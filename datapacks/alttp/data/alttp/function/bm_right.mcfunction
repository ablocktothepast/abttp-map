scoreboard players set selected bm 0

execute if score select bm matches 1 store result score @p spw_3_go run scoreboard players get seli bm
execute if score select bm matches 1 run function alttp:bm_select_close

execute if score selected bm matches 1 run return 0

execute if score menu bm matches 0 run function alttp:bm_right_0
execute if score menu bm matches 1 run function alttp:bm_right_1