tp @s ^ ^ ^0.05
scoreboard players add @s dummy 1
execute if score @s dummy matches 100.. at @p run tp @s ^ ^1.83 ^3.83

execute at @s rotated as @p if block ^ ^ ^0.25 #gothrough unless score @s dummy matches 100.. run function alttp:questm_switchalign_loop1