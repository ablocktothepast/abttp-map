#No keys?
execute unless data storage keys keys[1] run return 0

#Set storage data
execute store result storage keys vars.scroll1 int 1 run scoreboard players get km_scrollindex bm
execute store result storage keys vars.scroll2 int 1 run scoreboard players add km_scrollindex bm 1
execute store result storage keys vars.scroll3 int 1 run scoreboard players add km_scrollindex bm 1
execute store result storage keys vars.scroll4 int 1 run scoreboard players add km_scrollindex bm 1
execute store result storage keys vars.scroll5 int 1 run scoreboard players add km_scrollindex bm 1
scoreboard players remove km_scrollindex bm 4

#Run macro
function alttp:bm_km_scrollupdate_macro with storage keys vars

#Update description
function alttp:bm_km_description