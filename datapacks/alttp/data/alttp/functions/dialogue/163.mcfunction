execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"Carrots\\n","color":"gold"},{"text":"Pumpkins\\n"},{"text":"Melons"}]'}
execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"Carrots\\n"},{"text":"Pumpkins\\n","color":"gold"},{"text":"Melons"}]'}
execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"Carrots\\n"},{"text":"Pumpkins\\n"},{"text":"Melons","color":"gold"}]'}
scoreboard players set choices dialogue 3
scoreboard players set choicedialogue dialogue 1
scoreboard players set length dialogue 11
data merge storage dialogue {npc:"Bertram"}
scoreboard players set cutscene dialogue 0
scoreboard players set firstperson dialogue 0