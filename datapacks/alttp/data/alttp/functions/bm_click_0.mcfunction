#Other menus
execute if score slot bm matches 6 run schedule function alttp:bm_switch_1 2t
execute if score slot bm matches 13 run schedule function alttp:bm_switch_2 2t
execute if score slot bm matches 20 run schedule function alttp:bm_switch_2 2t
execute if score slot bm matches 27 run schedule function alttp:bm_switch_3 2t

#Items
execute if score slot bm matches 0 if score @p spw_u_1 matches 1 run function alttp:bm_iclick/0
execute if score slot bm matches 1 if score @p spw_u_2 matches 1 run function alttp:bm_iclick/1
execute if score slot bm matches 2 run function alttp:bm_iclick/2
execute if score slot bm matches 3 if score @p spw_u_3 matches 1 run function alttp:bm_iclick/3
execute if score slot bm matches 4 if score @p spw_u_11 matches 1 run function alttp:bm_iclick/4
execute if score slot bm matches 5 if score @p bottle_1 matches 0.. run function alttp:bm_iclick/5

execute if score slot bm matches 7 if score @p spw_u_18 matches 1 run function alttp:bm_iclick/7
execute if score slot bm matches 8 if score @p spw_u_20 matches 1 run function alttp:bm_iclick/8
execute if score slot bm matches 9 if score @p spw_u_5 matches 1 run function alttp:bm_iclick/9
execute if score slot bm matches 10 if score @p spw_u_13 matches 1 run function alttp:bm_iclick/10
execute if score slot bm matches 11 if score @p spw_u_10 matches 1 run function alttp:bm_iclick/11
execute if score slot bm matches 12 if score @p bottle_2 matches 0.. run function alttp:bm_iclick/12

execute if score slot bm matches 14 if score @p spw_u_17 matches 1 run function alttp:bm_iclick/14
execute if score slot bm matches 15 if score @p spw_u_16 matches 1 run function alttp:bm_iclick/15
execute if score slot bm matches 16 if score @p spw_u_15 matches 1 run function alttp:bm_iclick/16
execute if score slot bm matches 17 if score @p spw_u_9 matches 1 run function alttp:bm_iclick/17
execute if score slot bm matches 18 if score @p spw_u_12 matches 1 run function alttp:bm_iclick/18
execute if score slot bm matches 19 if score @p bottle_3 matches 0.. run function alttp:bm_iclick/19

execute if score slot bm matches 21 if score @p spw_u_6 matches 1 run function alttp:bm_iclick/21
execute if score slot bm matches 22 if score @p spw_u_7 matches 1 run function alttp:bm_iclick/22
execute if score slot bm matches 26 if score @p bottle_4 matches 0.. run function alttp:bm_iclick/26