execute store result score oldscroll quests run data get entity @p SelectedItemSlot
execute if score selected quests matches 1 run function alttp:questm_scroll_up
execute unless score selected quests matches 1 run scoreboard players remove selected quests 1

execute as @e[type=text_display,tag=description] run function alttp:questm_descriptions
execute as @e[type=text_display,tag=title] run function alttp:questm_titles