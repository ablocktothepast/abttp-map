execute if score @p magic matches 2.. if score @p lamp_state matches 0 run scoreboard players remove @p magic 1
execute if score @p magic matches 2.. run scoreboard players add @p lamp_state 1
execute if score @p lamp_state matches 2.. at @p run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace light[level=13]
execute if score @p lamp_state matches 2.. run scoreboard players set @p lamp_state 0
scoreboard players set @p rightclick 0
scoreboard players add @p st_lamp 1