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