execute if block ~ ~ ~ cobweb run tag @p add muck_cobweb
execute if block ~ ~ ~ cobweb run return 0

scoreboard players add muckraycast dummy 1
execute if score muckraycast dummy matches 15.. run return 0

execute if block ~ ~ ~ #gothrough positioned ^ ^ ^0.3 run function alttp:muckraycast