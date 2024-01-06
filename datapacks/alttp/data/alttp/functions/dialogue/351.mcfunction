execute if score letterIndex dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nT\\n\\n"}'}
execute if score letterIndex dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nTh\\n\\n"}'}
execute if score letterIndex dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe\\n\\n"}'}
execute if score letterIndex dialogue matches 4 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe \\n\\n"}'}
execute if score letterIndex dialogue matches 5 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe q\\n\\n"}'}
execute if score letterIndex dialogue matches 6 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe qu\\n\\n"}'}
execute if score letterIndex dialogue matches 7 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe qui\\n\\n"}'}
execute if score letterIndex dialogue matches 8 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz\\n\\n"}'}
execute if score letterIndex dialogue matches 9 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz \\n\\n"}'}
execute if score letterIndex dialogue matches 10 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz i\\n\\n"}'}
execute if score letterIndex dialogue matches 11 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is\\n\\n"}'}
execute if score letterIndex dialogue matches 12 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is \\n\\n"}'}
execute if score letterIndex dialogue matches 13 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is o\\n\\n"}'}
execute if score letterIndex dialogue matches 14 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is ov\\n\\n"}'}
execute if score letterIndex dialogue matches 15 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is ove\\n\\n"}'}
execute if score letterIndex dialogue matches 16 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over\\n\\n"}'}
execute if score letterIndex dialogue matches 17 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over.\\n\\n"}'}
execute if score letterIndex dialogue matches 18 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over..\\n\\n"}'}
execute if score letterIndex dialogue matches 19 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\n\\n"}'}
execute if score letterIndex dialogue matches 20 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nI\\n"}'}
execute if score letterIndex dialogue matches 21 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt\\n"}'}
execute if score letterIndex dialogue matches 22 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt \\n"}'}
execute if score letterIndex dialogue matches 23 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt w\\n"}'}
execute if score letterIndex dialogue matches 24 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt wa\\n"}'}
execute if score letterIndex dialogue matches 25 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was\\n"}'}
execute if score letterIndex dialogue matches 26 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was \\n"}'}
execute if score letterIndex dialogue matches 27 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was a\\n"}'}
execute if score letterIndex dialogue matches 28 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was al\\n"}'}
execute if score letterIndex dialogue matches 29 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was alr\\n"}'}
execute if score letterIndex dialogue matches 30 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was alri\\n"}'}
execute if score letterIndex dialogue matches 31 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was alrig\\n"}'}
execute if score letterIndex dialogue matches 32 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was alrigh\\n"}'}
execute if score letterIndex dialogue matches 33 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was alright\\n"}'}
execute if score letterIndex dialogue matches 34 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was alright.\\n"}'}
execute if score letterIndex dialogue matches 35 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was alright..\\n"}'}
execute if score letterIndex dialogue matches 36.. run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nThe quiz is over...\\nIt was alright...\\n"}'}
scoreboard players set length dialogue 37
execute if score letterIndex dialogue matches 1.. as @p at @s run playsound alttp.message weather @s
scoreboard players set choicedialogue dialogue 0
data merge storage dialogue {npc:"Lysander"}
scoreboard players set cutscene dialogue 0
scoreboard players set firstperson dialogue 0