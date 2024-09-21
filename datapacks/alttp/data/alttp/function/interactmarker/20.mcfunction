execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 8.. if entity @p[tag=interior] run tp @e[tag=owen] -372 1 726 -167 0
execute if score # gameplay matches 8.. if entity @p[tag=interior] run tag @e[tag=owen] add npcfocus

execute if score # gameplay matches 8.. run scoreboard players set id dialogue 295
execute store result score questprog dummy run data get storage minecraft:quests main[{id:6}].progress
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score questprog dummy matches 5 run scoreboard players set id dialogue 296

execute if score # gameplay matches 8.. if entity @p[tag=interior] run scoreboard players set angle dialogue 20
execute if score # gameplay matches 8.. if entity @p[tag=interior] run function alttp:dialogue_start