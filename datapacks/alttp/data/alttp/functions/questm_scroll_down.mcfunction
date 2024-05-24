scoreboard players add scrolled questlist 5
execute if score maxscroll questlist matches 0 run scoreboard players add scrolled questlist 1
scoreboard players remove scrolled questlist 5
function alttp:questm_list_scroll