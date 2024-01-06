##Create list of unlocked quests, this is run everytime a new quest is unlocked
##Step 1: Clear questlist
scoreboard objectives remove questsulist
scoreboard objectives add questsulist dummy
##Step 2: Make questlist (l1, l2, ...)
scoreboard players set index questlist 1

scoreboard players set check questlist 1
execute if score 1 questlist matches 1 unless score 1_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 2
execute if score 2 questlist matches 1 unless score 2_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 3
execute if score 3 questlist matches 1 unless score 3_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 4
execute if score 4 questlist matches 1 unless score 4_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 5
execute if score 5 questlist matches 1 unless score 5_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 6
execute if score 6 questlist matches 1 unless score 6_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 7
execute if score 7 questlist matches 1 unless score 7_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 8
execute if score 8 questlist matches 1 unless score 8_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 9
execute if score 9 questlist matches 1 unless score 9_complete questlist matches 1 run function alttp:questm_list_add

##Step 3: Add completed quests to the bottom
scoreboard players set check questlist 1
execute if score 1 questlist matches 1 if score 1_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 2
execute if score 2 questlist matches 1 if score 2_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 3
execute if score 3 questlist matches 1 if score 3_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 4
execute if score 4 questlist matches 1 if score 4_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 5
execute if score 5 questlist matches 1 if score 5_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 6
execute if score 6 questlist matches 1 if score 6_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 7
execute if score 7 questlist matches 1 if score 7_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 8
execute if score 8 questlist matches 1 if score 8_complete questlist matches 1 run function alttp:questm_list_add
scoreboard players set check questlist 9
execute if score 9 questlist matches 1 if score 9_complete questlist matches 1 run function alttp:questm_list_add