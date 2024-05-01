#Calculate index
execute store result score indexmath dummy run scoreboard players get slot bm
scoreboard players operation indexmath dummy += km_scrollindex bm
execute store result storage keys vars.desc int 1 run scoreboard players get indexmath dummy

function alttp:bm_km_description_macro with storage keys vars