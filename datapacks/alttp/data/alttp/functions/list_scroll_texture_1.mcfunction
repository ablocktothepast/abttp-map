data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
tag @s remove quest_marked

execute if score @s questlist matches 1 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
execute if score @s questlist matches 2 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
execute if score @s questlist matches 3 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
execute if score @s questlist matches 4 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
execute if score @s questlist matches 5 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
execute if score @s questlist matches 6 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
execute if score @s questlist matches 7 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
execute if score @s questlist matches 8 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
execute if score @s questlist matches 9 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}

##Marked
execute if score type quests = marked_type quests if score @s questlist = marked_id quests run tag @s add quest_marked

##Marked and completed? Unmark it!
execute if entity @s[tag=quest_completed,tag=quest_marked] run scoreboard players set marked_id quests 0
execute if entity @s[tag=quest_completed,tag=quest_marked] run tag @s remove quest_marked