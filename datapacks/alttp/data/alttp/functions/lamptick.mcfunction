scoreboard players add tick lamp_state 1
execute if score tick lamp_state matches 40.. if score @p magic matches ..0 run scoreboard players set @p lamp_state 0
execute if score tick lamp_state matches 40.. if score @p magic matches ..0 run tellraw @p {"text":"Your lamp ran out of magic to consume!","color":"dark_red"}
execute if score tick lamp_state matches 40.. if score @p magic matches ..0 at @p run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace light[level=13]
execute if score tick lamp_state matches 40.. if score @p magic matches ..0 run return 0
execute if score tick lamp_state matches 40.. run scoreboard players remove @p magic 1
execute if score tick lamp_state matches 40.. run scoreboard players set tick lamp_state 0
execute at @p run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace light[level=13]
execute at @p run fill ~-2 ~ ~-2 ~2 ~1 ~2 light[level=13] replace air