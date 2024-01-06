execute if score @s rupees > @s rupeesmax store result score @s rupees run scoreboard players get @s rupeesmax

execute store result storage macro amount int 1 run scoreboard players get @p rupees
function alttp:pin_rupees_macro with storage macro