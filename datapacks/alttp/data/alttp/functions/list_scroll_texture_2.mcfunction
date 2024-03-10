data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:238}}}
tag @s remove quest_completed
tag @s remove quest_marked

execute if score @s questlist matches 1 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:9001}}}
execute if score @s questlist matches 2 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:9002}}}
execute if score @s questlist matches 3 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:9003}}}
execute if score @s questlist matches 4 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:9004}}}
execute if score @s questlist matches 5 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:9005}}}
execute if score @s questlist matches 6 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:9006}}}
execute if score @s questlist matches 7 run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:9007}}}

##Completed markers
execute if score @s questlist matches 1 if score 1 quests_2_completed matches 1 run tag @s add quest_completed
execute if score @s questlist matches 2 if score 2 quests_2_completed matches 1 run tag @s add quest_completed
execute if score @s questlist matches 3 if score 3 quests_2_completed matches 1 run tag @s add quest_completed
execute if score @s questlist matches 4 if score 4 quests_2_completed matches 1 run tag @s add quest_completed
execute if score @s questlist matches 5 if score 5 quests_2_completed matches 1 run tag @s add quest_completed
execute if score @s questlist matches 6 if score 6 quests_2_completed matches 1 run tag @s add quest_completed
execute if score @s questlist matches 7 if score 7 quests_2_completed matches 1 run tag @s add quest_completed

##Marked
execute unless score marked_id quests matches 0 if score type quests = marked_type quests if score @s questlist = marked_id quests run tag @s add quest_marked

##Marked and completed? Unmark it!
execute if entity @s[tag=quest_completed,tag=quest_marked] run scoreboard players set marked_id quests 0
execute if entity @s[tag=quest_completed,tag=quest_marked] run tag @s remove quest_marked