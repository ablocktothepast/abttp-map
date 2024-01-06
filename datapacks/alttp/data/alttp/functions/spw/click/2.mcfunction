scoreboard players set @s dummy 2
execute if score @s spw_s matches 1 unless score @s dummy = @s spw_1 unless score @s dummy = @s spw_2 unless score @s dummy = @s spw_3 run execute store result score @s spw_1 run scoreboard players get @s dummy
execute if score @s spw_s matches 2 unless score @s dummy = @s spw_1 unless score @s dummy = @s spw_2 unless score @s dummy = @s spw_3 run execute store result score @s spw_2 run scoreboard players get @s dummy
execute if score @s spw_s matches 3 unless score @s dummy = @s spw_1 unless score @s dummy = @s spw_2 unless score @s dummy = @s spw_3 run execute store result score @s spw_3 run scoreboard players get @s dummy

clear @s carrot_on_a_stick{display:{Name:'{"text":"Boomerang","color":"dark_blue","italic":false}',Lore:['{"text":"Right-click to throw!","color":"white","italic":false}']},CustomModelData:33}
clear @s carrot_on_a_stick{display:{Name:'{"text":"Magical Boomerang","color":"red","italic":false}',Lore:['{"text":"Throw faster and farther!","color":"white","italic":false}']},CustomModelData:53} 1

function alttp:spw/cancel