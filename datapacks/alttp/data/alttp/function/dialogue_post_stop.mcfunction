execute if score cutscene dialogue matches 0 if score firstperson dialogue matches 0 run function alttp:dialoguestoptransitioninit

kill @e[type=marker,tag=dialogue_tp]

execute if score cutscene dialogue matches 0 if score firstperson dialogue matches 0 run return 0
bossbar set dialoguebars visible false