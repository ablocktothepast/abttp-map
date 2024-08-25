execute if score selected quests matches 1 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list1,limit=1] questlist
execute if score selected quests matches 2 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list2,limit=1] questlist
execute if score selected quests matches 3 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list3,limit=1] questlist
execute if score selected quests matches 4 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list4,limit=1] questlist
execute if score selected quests matches 5 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list5,limit=1] questlist
execute if score selected quests matches 6 store result score sselectt dummy run scoreboard players get @e[type=item_display,tag=list6,limit=1] questlist

##Descriptions
execute if score sselectt dummy matches 1 run data merge entity @s {text:'{"text":"Apple delivery","color":"#FFFFDD"}'}
execute if score sselectt dummy matches 2 run data merge entity @s {text:'{"text":"Boy Link!","color":"#FFFFDD"}'}
execute if score sselectt dummy matches 3 run data merge entity @s {text:'{"text":"A test of navigation","color":"#FFFFDD"}'}
execute if score sselectt dummy matches 4 run data merge entity @s {text:'{"text":"A test of agility","color":"#FFFFDD"}'}
execute if score sselectt dummy matches 5 run data merge entity @s {text:'{"text":"A test of knowledge","color":"#FFFFDD"}'}
execute if score sselectt dummy matches 6 run data merge entity @s {text:'{"text":"A cat that\'s stuck","color":"#FFFFDD"}'}
execute if score sselectt dummy matches 7 run data merge entity @s {text:'{"text":"A town filled with muck","color":"#FFFFDD"}'}