##Mathies
execute store result score scrollindex questlist run scoreboard players get scrolled questlist

##First quest box
function alttp:list_scroll_find
execute store result score @e[type=item_display,tag=list1] questlist run scoreboard players get scrollresult questlist

##Second quest box
function alttp:list_scroll_find
execute store result score @e[type=item_display,tag=list2] questlist run scoreboard players get scrollresult questlist

##Third quest box
function alttp:list_scroll_find
execute store result score @e[type=item_display,tag=list3] questlist run scoreboard players get scrollresult questlist

##Fourth quest box
function alttp:list_scroll_find
execute store result score @e[type=item_display,tag=list4] questlist run scoreboard players get scrollresult questlist

##Fifth quest box
function alttp:list_scroll_find
execute store result score @e[type=item_display,tag=list5] questlist run scoreboard players get scrollresult questlist

##Sixth quest box
function alttp:list_scroll_find
execute store result score @e[type=item_display,tag=list6] questlist run scoreboard players get scrollresult questlist

##Update box textures
execute as @e[type=item_display,tag=list] run function alttp:list_scroll_texture

##Update completed markers
execute as @e[type=item_display,tag=completed] run function alttp:questm_completed_update