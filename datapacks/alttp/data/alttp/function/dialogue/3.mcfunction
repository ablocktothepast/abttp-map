execute if score letterIndex dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nL\\n\\n"}'}
execute if score letterIndex dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLi\\n\\n"}'}
execute if score letterIndex dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLin\\n\\n"}'}
execute if score letterIndex dialogue matches 4 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink\\n\\n"}'}
execute if score letterIndex dialogue matches 5..29 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink!\\n\\n"}'}

execute if score letterIndex dialogue matches 30 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink!\\nW\\n"}'}
execute if score letterIndex dialogue matches 31 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink!\\nWa\\n"}'}
execute if score letterIndex dialogue matches 32 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink!\\nWak\\n"}'}
execute if score letterIndex dialogue matches 33 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink!\\nWake\\n"}'}
execute if score letterIndex dialogue matches 34 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink!\\nWake \\n"}'}
execute if score letterIndex dialogue matches 35 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink!\\nWake u\\n"}'}
execute if score letterIndex dialogue matches 36 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink!\\nWake up\\n"}'}
execute if score letterIndex dialogue matches 37.. run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'{"text":"\\nLink!\\nWake up!\\n"}'}
scoreboard players set length dialogue 37
execute if score letterIndex dialogue matches 1..5 as @p at @s run playsound alttp.message weather @s
execute if score letterIndex dialogue matches 30.. as @p at @s run playsound alttp.message weather @s
scoreboard players set choicedialogue dialogue 0
scoreboard players set npc dialogue 0
scoreboard players set cutscene dialogue 1
scoreboard players set firstperson dialogue 0
data merge storage dialogue {npc:""}