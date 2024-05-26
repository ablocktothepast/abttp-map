execute store result score oldscroll quests run data get entity @p SelectedItemSlot
execute if score scrolled questlist matches 1 if score selected quests >= max questlist run return 0
execute if score selected quests matches 6 run function alttp:questm_scroll_down
execute unless score selected quests matches 6 run scoreboard players add selected quests 1

execute as @e[type=text_display,tag=description] run function alttp:questm_descriptions
execute as @e[type=text_display,tag=title] run function alttp:questm_titles