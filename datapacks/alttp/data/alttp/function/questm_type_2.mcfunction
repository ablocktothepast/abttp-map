scoreboard players set type quests 2
scoreboard players set scrolled questlist 0
scoreboard players set selected quests 1

data merge entity @e[type=item_display,tag=bg,limit=1] {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:237}}}

function alttp:questm_list_scroll