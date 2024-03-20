execute at @p run tp @e[type=text_display,tag=bm,tag=bg] ^ ^1.21 ^0.39
execute at @p run tp @e[type=text_display,tag=bm,tag=bb] ^ ^2.15 ^0.385

#Selector
execute if score menu bm matches 0 run function alttp:bm_boxalign_0
execute if score menu bm matches 1 run function alttp:bm_boxalign_1
execute if score menu bm matches 2 run function alttp:bm_boxalign_2
execute if score menu bm matches 3 run function alttp:bm_boxalign_3