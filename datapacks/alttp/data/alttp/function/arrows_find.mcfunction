scoreboard players add @s arrows_selected 1
execute if score @s arrows_selected matches 4.. run scoreboard players set @s arrows_selected 1
execute if score @s arrows_selected matches 1 store result score arrowselectamount dummy run scoreboard players get @s arrows
execute if score @s arrows_selected matches 2 store result score arrowselectamount dummy run scoreboard players get @s arrows_silver
execute if score @s arrows_selected matches 3 store result score arrowselectamount dummy run scoreboard players get @s arrows_bomb
execute if score arrowselectamount dummy matches ..0 run function alttp:arrows_find