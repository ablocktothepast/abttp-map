execute at @p run tp @e[type=item_display,tag=bm,tag=bg] ^ ^1.62 ^0.39

#Selector
execute if score menu bm matches 0 run function alttp:bm_boxalign_0
execute if score menu bm matches 1 run function alttp:bm_boxalign_1
execute if score menu bm matches 2 run function alttp:bm_boxalign_2
execute if score menu bm matches 3 run function alttp:bm_boxalign_3