execute at @p run tp @e[type=item_display,tag=switchfirstperson] ^ ^1.83 ^
execute at @p run tp @e[type=item_display,tag=switchfirstperson2] ^ ^1.83 ^

scoreboard players set @e[type=item_display,tag=switchfirstperson] dummy 0
scoreboard players set @e[type=item_display,tag=switchfirstperson2] dummy 0

execute as @e[type=item_display,tag=switchfirstperson] at @s rotated as @p run function alttp:questm_switchalign_loop1
execute as @e[type=item_display,tag=switchfirstperson2] at @s rotated as @p run function alttp:questm_switchalign_loop2

summon marker ~ ~ ~ {Tags:["quest_switchalign"]}