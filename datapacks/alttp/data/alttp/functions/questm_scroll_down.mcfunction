scoreboard players add scrolled questlist 5
execute unless score scrolled questlist >= max questlist run scoreboard players add scrolled questlist 1
scoreboard players remove scrolled questlist 5
function alttp:questm_list_scroll