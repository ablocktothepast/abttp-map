execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"I\'ll buy it!\\n","color":"gold"},{"text":"Nevermind...\\n"},{"text":""}]'}
execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"I\'ll buy it!\\n"},{"text":"Nevermind...\\n","color":"gold"},{"text":""}]'}
scoreboard players set choices dialogue 2
scoreboard players set choicedialogue dialogue 1
scoreboard players set length dialogue 11
data merge storage dialogue {npc:"Alden"}
scoreboard players set cutscene dialogue 0
scoreboard players set firstperson dialogue 1