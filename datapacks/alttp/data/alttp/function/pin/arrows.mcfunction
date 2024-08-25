execute unless score @s dummy = arrowselectamount dummy run clear @s arrow
execute unless score @s dummy = arrowselectamount dummy run clear @s spectral_arrow
execute unless score @s dummy = arrowselectamount dummy run minecraft:ender_eye[minecraft:custom_model_data=2]
execute unless score @s dummy = arrowselectamount dummy run minecraft:ender_eye[minecraft:custom_model_data=3]
execute unless score @s dummy = arrowselectamount dummy run minecraft:ender_eye[minecraft:custom_model_data=4]
execute unless score @s dummy = arrowselectamount dummy run minecraft:ender_eye[minecraft:custom_model_data=5]
execute unless score @s dummy = arrowselectamount dummy run minecraft:ender_eye[minecraft:custom_model_data=6]

execute if score @s arrows_selected matches 1 store result storage test arrows int 1 run scoreboard players get @s arrows
execute if score @s arrows_selected matches 2 store result storage test arrows int 1 run scoreboard players get @s arrows_silver
execute if score @s arrows_selected matches 3 store result storage test arrows int 1 run scoreboard players get @s arrows_fire
execute if score @s arrows_selected matches 4 store result storage test arrows int 1 run scoreboard players get @s arrows_ice
execute if score @s arrows_selected matches 5 store result storage test arrows int 1 run scoreboard players get @s arrows_bomb

execute if score @s arrows matches ..0 if score @s arrows_silver matches ..0 if score @s arrows_fire matches ..0 if score @s arrows_ice matches ..0 if score @s arrows_bomb matches ..0 run scoreboard players set @s arrows_selected 0
execute unless score @s arrows_selected matches 0 if score arrowselectamount dummy matches ..0 run function alttp:arrows_find

execute if score @s arrows_selected matches 0 run item replace entity @s hotbar.8 with minecraft:barrier[minecraft:custom_model_data=1,minecraft:custom_name='{"text":"Out of arrows!","color":"red","italic":false}'] 1
execute if score @s arrows_selected matches 1 run function alttp:pin/arrows_normal with storage test
execute if score @s arrows_selected matches 2 run function alttp:pin/arrows_silver with storage test
execute if score @s arrows_selected matches 3 run function alttp:pin/arrows_fire with storage test
execute if score @s arrows_selected matches 4 run function alttp:pin/arrows_ice with storage test
execute if score @s arrows_selected matches 5 run function alttp:pin/arrows_bomb with storage test