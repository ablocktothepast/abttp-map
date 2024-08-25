execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"It\'s me, Link!\\n","color":"gold"},{"text":"I wanna race you!\\n"},{"text":"Nevermind..."}]'}
execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"It\'s me, Link!\\n"},{"text":"I wanna race you!\\n","color":"gold"},{"text":"Nevermind..."}]'}
execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"It\'s me, Link!\\n"},{"text":"I wanna race you!\\n"},{"text":"Nevermind...","color":"gold"}]'}
scoreboard players set choices dialogue 3
scoreboard players set choicedialogue dialogue 1
scoreboard players set length dialogue 11
data merge storage dialogue {npc:"Thaddeus"}
scoreboard players set cutscene dialogue 0
scoreboard players set firstperson dialogue 0