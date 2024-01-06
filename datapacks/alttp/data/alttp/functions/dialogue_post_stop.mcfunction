execute if score cutscene dialogue matches 0 at @e[type=marker,tag=dialogue_tp] if block ~ ~2 ~ creeper_head run setblock ~ ~2 ~ air
execute if score cutscene dialogue matches 0 at @e[type=marker,tag=dialogue_tp] if block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ air

execute if score cutscene dialogue matches 0 if score firstperson dialogue matches 0 run function alttp:dialoguestoptransitioninit

kill @e[type=marker,tag=dialogue_tp]