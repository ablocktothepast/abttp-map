execute unless score @p magic matches 5.. run tellraw @p {"text":"You don't have enough magic!","color":"dark_red"}

execute if score @p magic matches 5.. run function alttp:lamplight
execute if score @p magic matches 5.. run scoreboard players remove @p magic 5