execute if score letterIndex dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nF\\n\\n"}'}
execute if score letterIndex dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFi\\n\\n"}'}
execute if score letterIndex dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFio\\n\\n"}'}
execute if score letterIndex dialogue matches 4 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFion\\n\\n"}'}
execute if score letterIndex dialogue matches 5 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona\\n\\n"}'}
execute if score letterIndex dialogue matches 6 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\n\\n"}'}
execute if score letterIndex dialogue matches 7 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nA\\n"}'}
execute if score letterIndex dialogue matches 8 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAl\\n"}'}
execute if score letterIndex dialogue matches 9 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlm\\n"}'}
execute if score letterIndex dialogue matches 10 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmo\\n"}'}
execute if score letterIndex dialogue matches 11 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmos\\n"}'}
execute if score letterIndex dialogue matches 12 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost\\n"}'}
execute if score letterIndex dialogue matches 13 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost \\n"}'}
execute if score letterIndex dialogue matches 14 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a\\n"}'}
execute if score letterIndex dialogue matches 15 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a \\n"}'}
execute if score letterIndex dialogue matches 16 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a w\\n"}'}
execute if score letterIndex dialogue matches 17 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a wi\\n"}'}
execute if score letterIndex dialogue matches 18 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a win\\n"}'}
execute if score letterIndex dialogue matches 19 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winn\\n"}'}
execute if score letterIndex dialogue matches 20 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winne\\n"}'}
execute if score letterIndex dialogue matches 21 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winner\\n"}'}
execute if score letterIndex dialogue matches 22 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winner,\\n"}'}
execute if score letterIndex dialogue matches 23 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winner, \\n"}'}
execute if score letterIndex dialogue matches 24 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winner, g\\n"}'}
execute if score letterIndex dialogue matches 25 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winner, gi\\n"}'}
execute if score letterIndex dialogue matches 26 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winner, gir\\n"}'}
execute if score letterIndex dialogue matches 27 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winner, girl\\n"}'}
execute if score letterIndex dialogue matches 28.. run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nAlmost a winner, girl!\\n"}'}
scoreboard players set length dialogue 29
execute if score letterIndex dialogue matches 1.. as @p at @s run playsound alttp.message weather @s
scoreboard players set choicedialogue dialogue 0
data merge storage dialogue {npc:"Bertram"}
scoreboard players set cutscene dialogue 1
scoreboard players set firstperson dialogue 0