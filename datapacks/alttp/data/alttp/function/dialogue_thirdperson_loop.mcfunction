scoreboard players add @s dummy 1
tp @s ^ ^ ^0.1 ~ ~

execute at @s if block ^ ^ ^0.5 #gothrough unless score @s dummy matches 35.. run function alttp:dialogue_thirdperson_loop