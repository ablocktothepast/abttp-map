execute if score # gameplay matches 15.. positioned -249 -1 718 facing entity @p eyes run tp @e[tag=neal] -249 -1 718 -5 0
execute if score # gameplay matches 15.. run tag @e[tag=neal] add npcfocus

execute if score # gameplay matches 15.. run scoreboard players set id dialogue 400

execute if score # gameplay matches 15.. run function alttp:dialogue_start