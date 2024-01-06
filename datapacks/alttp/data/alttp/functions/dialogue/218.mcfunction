execute if score letterIndex dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nI\\n\\n"}'}
execute if score letterIndex dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn\\n\\n"}'}
execute if score letterIndex dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn \\n\\n"}'}
execute if score letterIndex dialogue matches 4 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn s\\n\\n"}'}
execute if score letterIndex dialogue matches 5 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn se\\n\\n"}'}
execute if score letterIndex dialogue matches 6 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn sec\\n\\n"}'}
execute if score letterIndex dialogue matches 7 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn seco\\n\\n"}'}
execute if score letterIndex dialogue matches 8 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn secon\\n\\n"}'}
execute if score letterIndex dialogue matches 9 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second\\n\\n"}'}
execute if score letterIndex dialogue matches 10 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second \\n\\n"}'}
execute if score letterIndex dialogue matches 11 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second p\\n\\n"}'}
execute if score letterIndex dialogue matches 12 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second pl\\n\\n"}'}
execute if score letterIndex dialogue matches 13 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second pla\\n\\n"}'}
execute if score letterIndex dialogue matches 14 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second plac\\n\\n"}'}
execute if score letterIndex dialogue matches 15 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second place\\n\\n"}'}
execute if score letterIndex dialogue matches 16 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second place.\\n\\n"}'}
execute if score letterIndex dialogue matches 17 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second place..\\n\\n"}'}
execute if score letterIndex dialogue matches 18.. run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn second place...\\n\\n"}'}
scoreboard players set length dialogue 19
execute if score letterIndex dialogue matches 1.. as @p at @s run playsound alttp.message weather @s
scoreboard players set choicedialogue dialogue 0
data merge storage dialogue {npc:"Bertram"}
scoreboard players set cutscene dialogue 1
scoreboard players set firstperson dialogue 0