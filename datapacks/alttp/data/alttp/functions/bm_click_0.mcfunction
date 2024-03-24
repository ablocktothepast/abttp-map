#Other menus
execute if score slot bm matches 6 run schedule function alttp:bm_switch_1 2t
execute if score slot bm matches 13 run schedule function alttp:bm_switch_2 2t
execute if score slot bm matches 20 run schedule function alttp:bm_switch_2 2t
execute if score slot bm matches 27 run schedule function alttp:bm_switch_3 2t

#Items
execute if score slot bm matches 0 if score @p spw_u_1 matches 1 run function alttp:bm_iclick/0
execute if score slot bm matches 1 if score @p spw_u_2 matches 1 run function alttp:bm_iclick/1
execute if score slot bm matches 2 if score @p bombs matches 1.. run function alttp:bm_iclick/2
execute if score slot bm matches 3 if score @p spw_u_3 matches 1 run function alttp:bm_iclick/3
execute if score slot bm matches 4 if score @p spw_u_11 matches 1 run function alttp:bm_iclick/4