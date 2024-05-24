scoreboard players set type quests 2
scoreboard players set scrolled questlist 0
scoreboard players set selected quests 0

data merge entity @e[type=item_display,tag=bg,limit=1] {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:237}}}

##Store unlocks from type 2 into main unlocks variable
execute store result score 1 questlist run scoreboard players get 1 quests_2
execute store result score 2 questlist run scoreboard players get 2 quests_2
execute store result score 3 questlist run scoreboard players get 3 quests_2
execute store result score 4 questlist run scoreboard players get 4 quests_2
execute store result score 5 questlist run scoreboard players get 5 quests_2
execute store result score 6 questlist run scoreboard players get 6 quests_2
execute store result score 7 questlist run scoreboard players get 7 quests_2

##Store completed values from type 2 into main completed variable
execute store result score 1_complete questlist run scoreboard players get 1 quests_2_completed
execute store result score 2_complete questlist run scoreboard players get 2 quests_2_completed
execute store result score 3_complete questlist run scoreboard players get 3 quests_2_completed
execute store result score 4_complete questlist run scoreboard players get 4 quests_2_completed
execute store result score 5_complete questlist run scoreboard players get 5 quests_2_completed
execute store result score 6_complete questlist run scoreboard players get 6 quests_2_completed
execute store result score 7_complete questlist run scoreboard players get 7 quests_2_completed

function alttp:questm_list_unlocks
function alttp:questm_list_scroll