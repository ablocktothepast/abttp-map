function alttp:questm_entities

scoreboard players set menu quests 1
kill @e[type=marker,tag=playerpos,tag=quest]
execute at @p run summon marker ~ ~ ~ {Tags:["quest","playerpos"]}
execute at @p run tp @e[type=marker,tag=playerpos] ~ ~ ~ ~ 0
scoreboard players set scrolled questlist 1
function alttp:questm_type_2
function alttp:questm_list_unlocks
scoreboard players set @p quest_sneaking 0
scoreboard players set . crosshair 0
kill @e[type=marker,tag=quest_switchalign]

##Bossbar instructions
bossbar remove quests
execute if score 1 quests_1 matches 1 run bossbar add quests [{"text":"Left-click to switch type"},{"text":" | ","color":"gray","bold":true},{"text":"Right-click to mark"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]
execute unless score 1 quests_1 matches 1 run bossbar add quests [{"text":"Right-click to mark"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]
bossbar set quests visible true
bossbar set quests players @p
bossbar set quests color white
bossbar set quests max 100
bossbar set quests value 100

