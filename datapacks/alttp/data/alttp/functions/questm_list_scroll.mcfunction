##Mathies
execute store result score scrollindex questlist run scoreboard players get scrolled questlist

##First quest box
data modify storage minecraft:quests temp_id set value 1
execute store result storage quests temp int 1 run scoreboard players get scrollindex questlist
function alttp:questm_list_scroll_macro with storage quests

##Second quest box
scoreboard players add scrollindex questlist 1
data modify storage minecraft:quests temp_id set value 2
execute store result storage quests temp int 1 run scoreboard players get scrollindex questlist
function alttp:questm_list_scroll_macro with storage quests

##Third quest box
scoreboard players add scrollindex questlist 1
data modify storage minecraft:quests temp_id set value 3
execute store result storage quests temp int 1 run scoreboard players get scrollindex questlist
function alttp:questm_list_scroll_macro with storage quests

##Fourth quest box
scoreboard players add scrollindex questlist 1
data modify storage minecraft:quests temp_id set value 4
execute store result storage quests temp int 1 run scoreboard players get scrollindex questlist
function alttp:questm_list_scroll_macro with storage quests

##Fifth quest box
scoreboard players add scrollindex questlist 1
data modify storage minecraft:quests temp_id set value 5
execute store result storage quests temp int 1 run scoreboard players get scrollindex questlist
function alttp:questm_list_scroll_macro with storage quests

##Sixth quest box
scoreboard players add scrollindex questlist 1
data modify storage minecraft:quests temp_id set value 6
execute store result storage quests temp int 1 run scoreboard players get scrollindex questlist
function alttp:questm_list_scroll_macro with storage quests

##Check if more scrolling is possible
scoreboard players add scrollindex questlist 1
execute store result storage quests temp int 1 run scoreboard players get scrollindex questlist
function alttp:questm_list_scroll_morescrollcheck_macro with storage quests

##Update box textures
execute as @e[type=item_display,tag=list] run function alttp:list_scroll_texture

##Update completed markers
execute as @e[type=item_display,tag=completed] run function alttp:questm_completed_update