execute if score letterIndex dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nF\\n\\n"}'}
execute if score letterIndex dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFi\\n\\n"}'}
execute if score letterIndex dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFio\\n\\n"}'}
execute if score letterIndex dialogue matches 4 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFion\\n\\n"}'}
execute if score letterIndex dialogue matches 5 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona\\n\\n"}'}
execute if score letterIndex dialogue matches 6 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\n\\n"}'}
execute if score letterIndex dialogue matches 7 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nG\\n"}'}
execute if score letterIndex dialogue matches 8 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGo\\n"}'}
execute if score letterIndex dialogue matches 9 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGoo\\n"}'}
execute if score letterIndex dialogue matches 10 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood\\n"}'}
execute if score letterIndex dialogue matches 11 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood \\n"}'}
execute if score letterIndex dialogue matches 12 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood j\\n"}'}
execute if score letterIndex dialogue matches 13 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood jo\\n"}'}
execute if score letterIndex dialogue matches 14 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job\\n"}'}
execute if score letterIndex dialogue matches 15 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job \\n"}'}
execute if score letterIndex dialogue matches 16 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job o\\n"}'}
execute if score letterIndex dialogue matches 17 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on\\n"}'}
execute if score letterIndex dialogue matches 18 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on \\n"}'}
execute if score letterIndex dialogue matches 19 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on y\\n"}'}
execute if score letterIndex dialogue matches 20 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on yo\\n"}'}
execute if score letterIndex dialogue matches 21 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on you\\n"}'}
execute if score letterIndex dialogue matches 22 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your\\n"}'}
execute if score letterIndex dialogue matches 23 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your \\n"}'}
execute if score letterIndex dialogue matches 24 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your r\\n"}'}
execute if score letterIndex dialogue matches 25 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your ra\\n"}'}
execute if score letterIndex dialogue matches 26 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your ran\\n"}'}
execute if score letterIndex dialogue matches 27 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your rank\\n"}'}
execute if score letterIndex dialogue matches 28 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your ranki\\n"}'}
execute if score letterIndex dialogue matches 29 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your rankin\\n"}'}
execute if score letterIndex dialogue matches 30 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your ranking\\n"}'}
execute if score letterIndex dialogue matches 31.. run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nFiona!\\nGood job on your ranking!\\n"}'}
scoreboard players set length dialogue 32
execute if score letterIndex dialogue matches 1.. as @p at @s run playsound alttp.message weather @s
scoreboard players set choicedialogue dialogue 0
data merge storage dialogue {npc:"Bertram"}
scoreboard players set cutscene dialogue 1
scoreboard players set firstperson dialogue 0