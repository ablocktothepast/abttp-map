scoreboard players set @s dummy 11
execute if score @s spw_s matches 1 unless score @s dummy = @s spw_1 unless score @s dummy = @s spw_2 unless score @s dummy = @s spw_3 run execute store result score @s spw_1 run scoreboard players get @s dummy
execute if score @s spw_s matches 2 unless score @s dummy = @s spw_1 unless score @s dummy = @s spw_2 unless score @s dummy = @s spw_3 run execute store result score @s spw_2 run scoreboard players get @s dummy
execute if score @s spw_s matches 3 unless score @s dummy = @s spw_1 unless score @s dummy = @s spw_2 unless score @s dummy = @s spw_3 run execute store result score @s spw_3 run scoreboard players get @s dummy

clear @s carrot_on_a_stick{display:{Name:'{"text":"Bombos Medallion","color":"yellow","italic":false}',Lore:['{"text":"Snap away all the enemies!","color":"white","italic":false}']},CustomModelData:13}

function alttp:spw/cancel