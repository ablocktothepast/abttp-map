execute if score letterIndex dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nI\\n\\n"}'}
execute if score letterIndex dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn\\n\\n"}'}
execute if score letterIndex dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn \\n\\n"}'}
execute if score letterIndex dialogue matches 4 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn l\\n\\n"}'}
execute if score letterIndex dialogue matches 5 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn la\\n\\n"}'}
execute if score letterIndex dialogue matches 6 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn las\\n\\n"}'}
execute if score letterIndex dialogue matches 7 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last\\n\\n"}'}
execute if score letterIndex dialogue matches 8 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last \\n\\n"}'}
execute if score letterIndex dialogue matches 9 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last p\\n\\n"}'}
execute if score letterIndex dialogue matches 10 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last pl\\n\\n"}'}
execute if score letterIndex dialogue matches 11 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last pla\\n\\n"}'}
execute if score letterIndex dialogue matches 12 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last plac\\n\\n"}'}
execute if score letterIndex dialogue matches 13 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place\\n\\n"}'}
execute if score letterIndex dialogue matches 14 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place \\n\\n"}'}
execute if score letterIndex dialogue matches 15 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place w\\n\\n"}'}
execute if score letterIndex dialogue matches 16 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\\n\\n"}'}
execute if score letterIndex dialogue matches 17 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'\\n\\n"}'}
execute if score letterIndex dialogue matches 18 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'v\\n\\n"}'}
execute if score letterIndex dialogue matches 19 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'ve\\n\\n"}'}
execute if score letterIndex dialogue matches 20 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'ve \\n\\n"}'}
execute if score letterIndex dialogue matches 21 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'ve g\\n\\n"}'}
execute if score letterIndex dialogue matches 22 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'ve go\\n\\n"}'}
execute if score letterIndex dialogue matches 23 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'ve got\\n\\n"}'}
execute if score letterIndex dialogue matches 24 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'ve got.\\n\\n"}'}
execute if score letterIndex dialogue matches 25 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'ve got..\\n\\n"}'}
execute if score letterIndex dialogue matches 26.. run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nIn last place we\'ve got...\\n\\n"}'}
scoreboard players set length dialogue 27
execute if score letterIndex dialogue matches 1.. as @p at @s run playsound alttp.message weather @s
scoreboard players set choicedialogue dialogue 0
data merge storage dialogue {npc:"Bertram"}
scoreboard players set cutscene dialogue 1
scoreboard players set firstperson dialogue 0