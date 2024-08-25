execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 1 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"A test of navigation\\n","color":"gold"},{"text":"A test of agility\\n"},{"text":"A test of knowledge"}]'}
execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 2 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"A test of navigation\\n"},{"text":"A test of agility\\n","color":"gold"},{"text":"A test of knowledge"}]'}
execute if score letterIndex dialogue matches 1.. if score choice dialogue matches 3 run data merge entity @e[type=text_display,tag=dialogue_td,limit=1] {text:'[{"text":"\\n"},{"text":"A test of navigation\\n"},{"text":"A test of agility\\n"},{"text":"A test of knowledge","color":"gold"}]'}
scoreboard players set choices dialogue 3
scoreboard players set choicedialogue dialogue 1
scoreboard players set length dialogue 11
scoreboard players set firstperson dialogue 0
data merge storage dialogue {npc:"Uncle Alphon"}
scoreboard players set cutscene dialogue 0