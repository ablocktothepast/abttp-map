tp @e[tag=alden] -288 -12 698 -90 0
tag @e[tag=alden] add npcfocus

scoreboard players set id dialogue 419
execute if score oakheart_alden_1 shops matches 0 if score oakheart_alden_2 shops matches 0 if score oakheart_alden_3 shops matches 0 if score oakheart_alden_4 shops matches 0 run scoreboard players set id dialogue 436

function alttp:dialogue_start