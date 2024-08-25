data merge entity @s {view_range:0f}

##Completed
execute if entity @s[tag=completed1] if entity @e[type=item_display,tag=list1,tag=quest_completed] run data merge entity @s {view_range:5f}
execute if entity @s[tag=completed2] if entity @e[type=item_display,tag=list2,tag=quest_completed] run data merge entity @s {view_range:5f}
execute if entity @s[tag=completed3] if entity @e[type=item_display,tag=list3,tag=quest_completed] run data merge entity @s {view_range:5f}
execute if entity @s[tag=completed4] if entity @e[type=item_display,tag=list4,tag=quest_completed] run data merge entity @s {view_range:5f}
execute if entity @s[tag=completed5] if entity @e[type=item_display,tag=list5,tag=quest_completed] run data merge entity @s {view_range:5f}
execute if entity @s[tag=completed6] if entity @e[type=item_display,tag=list6,tag=quest_completed] run data merge entity @s {view_range:5f}

##Marked
execute if entity @s[tag=completed1] if entity @e[type=item_display,tag=list1,tag=quest_marked] run data merge entity @s {view_range:6f}
execute if entity @s[tag=completed2] if entity @e[type=item_display,tag=list2,tag=quest_marked] run data merge entity @s {view_range:6f}
execute if entity @s[tag=completed3] if entity @e[type=item_display,tag=list3,tag=quest_marked] run data merge entity @s {view_range:6f}
execute if entity @s[tag=completed4] if entity @e[type=item_display,tag=list4,tag=quest_marked] run data merge entity @s {view_range:6f}
execute if entity @s[tag=completed5] if entity @e[type=item_display,tag=list5,tag=quest_marked] run data merge entity @s {view_range:6f}
execute if entity @s[tag=completed6] if entity @e[type=item_display,tag=list6,tag=quest_marked] run data merge entity @s {view_range:6f}

##Correct texture (completed/marked)
execute if entity @s[nbt={view_range:5f}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":239}}}
execute if entity @s[nbt={view_range:6f}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":240}}}