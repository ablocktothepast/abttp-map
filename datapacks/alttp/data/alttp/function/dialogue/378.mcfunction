execute if score letterIndex dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nA\\n\\n"}'}
execute if score letterIndex dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAl\\n\\n"}'}
execute if score letterIndex dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlw\\n\\n"}'}
execute if score letterIndex dialogue matches 4 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlwa\\n\\n"}'}
execute if score letterIndex dialogue matches 5 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlway\\n\\n"}'}
execute if score letterIndex dialogue matches 6 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways\\n\\n"}'}
execute if score letterIndex dialogue matches 7 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways \\n\\n"}'}
execute if score letterIndex dialogue matches 8 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways b\\n\\n"}'}
execute if score letterIndex dialogue matches 9 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways be\\n\\n"}'}
execute if score letterIndex dialogue matches 10 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways bel\\n\\n"}'}
execute if score letterIndex dialogue matches 11 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways beli\\n\\n"}'}
execute if score letterIndex dialogue matches 12 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways belie\\n\\n"}'}
execute if score letterIndex dialogue matches 13 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believ\\n\\n"}'}
execute if score letterIndex dialogue matches 14 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe\\n\\n"}'}
execute if score letterIndex dialogue matches 15 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe \\n\\n"}'}
execute if score letterIndex dialogue matches 16 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe i\\n\\n"}'}
execute if score letterIndex dialogue matches 17 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in\\n\\n"}'}
execute if score letterIndex dialogue matches 18 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in \\n\\n"}'}
execute if score letterIndex dialogue matches 19 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in y\\n\\n"}'}
execute if score letterIndex dialogue matches 20 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in yo\\n\\n"}'}
execute if score letterIndex dialogue matches 21 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in you\\n\\n"}'}
execute if score letterIndex dialogue matches 22 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in your\\n\\n"}'}
execute if score letterIndex dialogue matches 23 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in your \\n\\n"}'}
execute if score letterIndex dialogue matches 24 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in your u\\n\\n"}'}
execute if score letterIndex dialogue matches 25 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in your un\\n\\n"}'}
execute if score letterIndex dialogue matches 26 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in your unc\\n\\n"}'}
execute if score letterIndex dialogue matches 27 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in your uncl\\n\\n"}'}
execute if score letterIndex dialogue matches 28 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in your uncle\\n\\n"}'}
execute if score letterIndex dialogue matches 29.. run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nAlways believe in your uncle!\\n\\n"}'}
scoreboard players set length dialogue 30
execute if score letterIndex dialogue matches 1.. as @p at @s run playsound alttp.message weather @s
scoreboard players set choicedialogue dialogue 0
data merge storage dialogue {npc:"Fiona"}
scoreboard players set cutscene dialogue 0
scoreboard players set firstperson dialogue 0