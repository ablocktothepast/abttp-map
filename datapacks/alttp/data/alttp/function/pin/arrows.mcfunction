execute unless score @s dummy = arrowselectamount dummy run clear @s arrow
execute unless score @s dummy = arrowselectamount dummy run clear @s spectral_arrow
execute unless score @s dummy = arrowselectamount dummy run clear @s minecraft:ender_eye[minecraft:custom_model_data=2]
execute unless score @s dummy = arrowselectamount dummy run clear @s minecraft:ender_eye[minecraft:custom_model_data=3]
execute unless score @s dummy = arrowselectamount dummy run clear @s minecraft:ender_eye[minecraft:custom_model_data=4]

execute if score @s arrows matches ..0 if score @s arrows_silver matches ..0 if score @s arrows_bomb matches ..0 run scoreboard players set @s arrows_selected 0
execute if score @s arrows_selected matches 1 store result score arrowselectamount dummy run scoreboard players get @s arrows
execute if score @s arrows_selected matches 2 store result score arrowselectamount dummy run scoreboard players get @s arrows_silver
execute if score @s arrows_selected matches 3 store result score arrowselectamount dummy run scoreboard players get @s arrows_bomb
execute unless score @s arrows_selected matches 0 if score arrowselectamount dummy matches ..0 run function alttp:arrows_find

execute if score @s arrows_selected matches 1 store result storage test arrows int 1 run scoreboard players get @s arrows
execute if score @s arrows_selected matches 2 store result storage test arrows int 1 run scoreboard players get @s arrows_silver
execute if score @s arrows_selected matches 3 store result storage test arrows int 1 run scoreboard players get @s arrows_bomb

execute if score @s arrows_selected matches 0 if score @p quiverlevel matches 1 run item replace entity @s hotbar.8 with minecraft:ender_eye[minecraft:custom_model_data=1,minecraft:custom_name='{"text":"Empty quiver","color":"white","italic":false}'] 1
execute if score @s arrows_selected matches 0 if score @p quiverlevel matches 2 run item replace entity @s hotbar.8 with minecraft:ender_eye[minecraft:custom_model_data=2,minecraft:custom_name='{"text":"Empty quiver","color":"white","italic":false}'] 1
execute if score @s arrows_selected matches 0 if score @p quiverlevel matches 3 run item replace entity @s hotbar.8 with minecraft:ender_eye[minecraft:custom_model_data=3,minecraft:custom_name='{"text":"Empty quiver","color":"white","italic":false}'] 1
execute if score @s arrows_selected matches 1 run function alttp:pin/arrows_normal with storage test
execute if score @s arrows_selected matches 2 run function alttp:pin/arrows_silver with storage test
execute if score @s arrows_selected matches 3 run function alttp:pin/arrows_bomb with storage test