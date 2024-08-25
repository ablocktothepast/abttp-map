execute if score # gameplay matches 5..14 unless score # gameplay matches 9 positioned -227 -4 573 run tp @e[tag=bernard] ~ ~ ~ 53 0
execute if score # gameplay matches 5..14 unless score # gameplay matches 9 positioned -226 -4 574 run tp @e[type=item_display,tag=neal] ~ ~ ~ 79 0
execute if score # gameplay matches 5..14 unless score # gameplay matches 9 positioned -228 -4 572 run tp @e[tag=elisabeth] ~ ~ ~ 23 0
execute if score # gameplay matches 5..14 unless score # gameplay matches 9 run tag @e[tag=bernard] add npcfocus

execute if score # gameplay matches 5..7 run scoreboard players set id dialogue 383
execute if score # gameplay matches 8 run scoreboard players set id dialogue 39
execute if score # gameplay matches 10 run scoreboard players set id dialogue 64
execute if score # gameplay matches 11 run scoreboard players set id dialogue 384
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1 run scoreboard players set id dialogue 385
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 run scoreboard players set id dialogue 388
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 run scoreboard players set id dialogue 391
execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 394
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 run scoreboard players set id dialogue 395

execute if score # gameplay matches 5..14 unless score # gameplay matches 9 run function alttp:dialogue_start