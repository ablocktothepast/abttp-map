execute if score letterIndex dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nP\\n\\n"}'}
execute if score letterIndex dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPe\\n\\n"}'}
execute if score letterIndex dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPer\\n\\n"}'}
execute if score letterIndex dialogue matches 4 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPerc\\n\\n"}'}
execute if score letterIndex dialogue matches 5 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPerci\\n\\n"}'}
execute if score letterIndex dialogue matches 6 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPerciv\\n\\n"}'}
execute if score letterIndex dialogue matches 7 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPerciva\\n\\n"}'}
execute if score letterIndex dialogue matches 8 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival\\n\\n"}'}
execute if score letterIndex dialogue matches 9 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\n\\n"}'}
execute if score letterIndex dialogue matches 10 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nW\\n"}'}
execute if score letterIndex dialogue matches 11 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWe\\n"}'}
execute if score letterIndex dialogue matches 12 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWel\\n"}'}
execute if score letterIndex dialogue matches 13 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell\\n"}'}
execute if score letterIndex dialogue matches 14 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell \\n"}'}
execute if score letterIndex dialogue matches 15 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell d\\n"}'}
execute if score letterIndex dialogue matches 16 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell do\\n"}'}
execute if score letterIndex dialogue matches 17 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell don\\n"}'}
execute if score letterIndex dialogue matches 18 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done\\n"}'}
execute if score letterIndex dialogue matches 19 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done,\\n"}'}
execute if score letterIndex dialogue matches 20 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, \\n"}'}
execute if score letterIndex dialogue matches 21 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, P\\n"}'}
execute if score letterIndex dialogue matches 22 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, Pe\\n"}'}
execute if score letterIndex dialogue matches 23 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, Per\\n"}'}
execute if score letterIndex dialogue matches 24 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, Perc\\n"}'}
execute if score letterIndex dialogue matches 25 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, Perci\\n"}'}
execute if score letterIndex dialogue matches 26 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, Perciv\\n"}'}
execute if score letterIndex dialogue matches 27 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, Perciva\\n"}'}
execute if score letterIndex dialogue matches 28 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, Percival\\n"}'}
execute if score letterIndex dialogue matches 29.. run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nPercival!\\nWell done, Percival!\\n"}'}
scoreboard players set length dialogue 30
execute if score letterIndex dialogue matches 1.. as @p at @s run playsound alttp.message weather @s
scoreboard players set choicedialogue dialogue 0
data merge storage dialogue {npc:"Bertram"}
scoreboard players set cutscene dialogue 1
scoreboard players set firstperson dialogue 0