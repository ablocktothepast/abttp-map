execute if score letterIndex dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nL\\n\\n"}'}
execute if score letterIndex dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLi\\n\\n"}'}
execute if score letterIndex dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLin\\n\\n"}'}
execute if score letterIndex dialogue matches 4 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink\\n\\n"}'}
execute if score letterIndex dialogue matches 5 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink.\\n\\n"}'}
execute if score letterIndex dialogue matches 6 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink..\\n\\n"}'}
execute if score letterIndex dialogue matches 7 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\n\\n"}'}

execute if score letterIndex dialogue matches 30 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nC\\n"}'}
execute if score letterIndex dialogue matches 31 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCa\\n"}'}
execute if score letterIndex dialogue matches 32 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan\\n"}'}
execute if score letterIndex dialogue matches 33 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan \\n"}'}
execute if score letterIndex dialogue matches 34 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan y\\n"}'}
execute if score letterIndex dialogue matches 35 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan yo\\n"}'}
execute if score letterIndex dialogue matches 36 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you\\n"}'}
execute if score letterIndex dialogue matches 37 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you \\n"}'}
execute if score letterIndex dialogue matches 38 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you h\\n"}'}
execute if score letterIndex dialogue matches 39 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you he\\n"}'}
execute if score letterIndex dialogue matches 40 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you hea\\n"}'}
execute if score letterIndex dialogue matches 41 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you hear\\n"}'}
execute if score letterIndex dialogue matches 42 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you hear \\n"}'}
execute if score letterIndex dialogue matches 43 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you hear m\\n"}'}
execute if score letterIndex dialogue matches 44 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you hear me\\n"}'}
execute if score letterIndex dialogue matches 45 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you hear me.\\n"}'}
execute if score letterIndex dialogue matches 46 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you hear me..\\n"}'}
execute if score letterIndex dialogue matches 47.. run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink...\\nCan you hear me..?\\n"}'}
scoreboard players set length dialogue 47
execute if score letterIndex dialogue matches 1..7 as @p at @s run playsound alttp.message weather @s
execute if score letterIndex dialogue matches 30.. as @p at @s run playsound alttp.message weather @s
scoreboard players set choicedialogue dialogue 0
scoreboard players set npc dialogue 0
scoreboard players set cutscene dialogue 1
scoreboard players set firstperson dialogue 0
data merge storage dialogue {npc:""}