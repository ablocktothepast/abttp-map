##Reset variable
data remove entity @e[type=interaction,tag=leftclick,limit=1] interaction


##Check if it is a completed quest
execute if score selected quests matches 1 if entity @e[type=item_display,tag=list1,tag=quest_completed] run return 0
execute if score selected quests matches 2 if entity @e[type=item_display,tag=list2,tag=quest_completed] run return 0
execute if score selected quests matches 3 if entity @e[type=item_display,tag=list3,tag=quest_completed] run return 0
execute if score selected quests matches 4 if entity @e[type=item_display,tag=list4,tag=quest_completed] run return 0
execute if score selected quests matches 5 if entity @e[type=item_display,tag=list5,tag=quest_completed] run return 0
execute if score selected quests matches 6 if entity @e[type=item_display,tag=list6,tag=quest_completed] run return 0

##Store selected ID & its type
execute store result score marked_type quests run scoreboard players get type quests
execute if score selected quests matches 1 store result score marked_id quests run scoreboard players get @e[type=item_display,tag=list1,limit=1] questlist
execute if score selected quests matches 2 store result score marked_id quests run scoreboard players get @e[type=item_display,tag=list2,limit=1] questlist
execute if score selected quests matches 3 store result score marked_id quests run scoreboard players get @e[type=item_display,tag=list3,limit=1] questlist
execute if score selected quests matches 4 store result score marked_id quests run scoreboard players get @e[type=item_display,tag=list4,limit=1] questlist
execute if score selected quests matches 5 store result score marked_id quests run scoreboard players get @e[type=item_display,tag=list5,limit=1] questlist
execute if score selected quests matches 6 store result score marked_id quests run scoreboard players get @e[type=item_display,tag=list6,limit=1] questlist

##Set the X and Z for map coordinate math
function alttp:questm_mark_find

##Update scroll thingies
function alttp:questm_list_scroll