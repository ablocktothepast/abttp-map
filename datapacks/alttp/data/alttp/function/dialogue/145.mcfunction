execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"Bring it on!\\n","color":"gold"},{"text":"Hold on...\\n"},{"text":""}]'}
execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"Bring it on!\\n"},{"text":"Hold on...\\n","color":"gold"},{"text":""}]'}
scoreboard players set choices dialogue 2
scoreboard players set choicedialogue dialogue 1
scoreboard players set length dialogue 11
data merge storage dialogue {npc:"Bertram"}
scoreboard players set cutscene dialogue 0
scoreboard players set firstperson dialogue 0