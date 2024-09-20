execute store result score old_arrow dummy run scoreboard players get @p arrows
execute store result score old_arrowsilver dummy run scoreboard players get @p arrows_silver
execute store result score old_arrowbomb dummy run scoreboard players get @p arrows_bomb
execute store result score old_quiver dummy run scoreboard players get @p quiverlevel

clear @p arrow
clear @p ender_eye
execute as @p at @s run function alttp:pin/arrows