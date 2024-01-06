execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"Yes, let\'s go!\\n","color":"gold"},{"text":"No, I was sleeping so well!\\n"},{"text":""}]'}
execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"Yes, let\'s go!\\n"},{"text":"No, I was sleeping so well!\\n","color":"gold"},{"text":""}]'}
scoreboard players set choices dialogue 2
scoreboard players set choicedialogue dialogue 1
scoreboard players set length dialogue 11
scoreboard players set npc dialogue 1
scoreboard players set cutscene dialogue 0
scoreboard players set firstperson dialogue 0
data merge storage dialogue {npc:"Uncle Alphon"}