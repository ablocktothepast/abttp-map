execute store result score switchy dummy run scoreboard players get type quests

function alttp:questm_type_resetvariables
execute if score switchy dummy matches 1 run function alttp:questm_type_2
execute if score switchy dummy matches 2 if score 1 quests_1 matches 1 run function alttp:questm_type_1

data remove entity @e[type=interaction,tag=leftclick,limit=1] attack

execute as @e[type=text_display,tag=description] run function alttp:questm_descriptions
execute as @e[type=text_display,tag=title] run function alttp:questm_titles