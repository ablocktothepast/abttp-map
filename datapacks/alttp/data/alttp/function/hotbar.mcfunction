##Calculate percentage
execute store result score perc math run scoreboard players get @p magic
execute store result score percmax math run scoreboard players get @p magicmax
scoreboard players set 100 math 100
scoreboard players operation perc math *= 100 math
scoreboard players operation perc math /= percmax math
scoreboard players set 5 math 5
scoreboard players operation perc math /= 5 math

function alttp:hotbar_text