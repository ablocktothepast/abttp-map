tp @p -403 -11 712 -116 0

function alttp:npcs/town

tag @e[tag=thaddeus] add npcfocus
tp @e[tag=thaddeus] -401 -11 711 42 0
scoreboard players set id dialogue 134
schedule function alttp:dialogue_start 20t