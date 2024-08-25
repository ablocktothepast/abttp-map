scoreboard players set active cutscene 0
kill @e[type=area_effect_cloud,tag=cutscene_aec]
kill @e[type=minecart,tag=cutscene_mc]

gamemode adventure @p
tp @p @e[type=marker,tag=cutscenemarker,limit=1]

function alttp:hotbar

scoreboard players set . crosshair 1

kill @e[tag=cutsceneclick]