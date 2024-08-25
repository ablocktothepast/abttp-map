scoreboard players set active dialogue 1
scoreboard players set dialoguetransition dummy 0
scoreboard players set dialoguetransitiontick dummy -99
gamemode adventure @p
kill @e[type=marker,tag=dialoguetransitiongoal]
kill @e[type=villager,tag=dialoguetransition]

tp @e[type=marker,tag=dialogueplayerpos] @e[type=marker,tag=dialogue_fakeplayerpos,limit=1]

kill @e[type=area_effect_cloud,tag=dialogue_lock_aec]
kill @e[type=minecart,tag=dialogue_lock_minecart]

execute if score firstperson dialogue matches 1 at @p run summon marker ~ ~ ~ {Tags:["dialogue_tp"]}
execute if score firstperson dialogue matches 1 at @p run tp @e[type=marker,tag=dialogue_tp] ~ ~ ~ ~ 0