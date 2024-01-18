scoreboard players set dialoguetransition2 dummy 0
scoreboard players set dialoguetransitiontick2 dummy -99
gamemode adventure @p
kill @e[type=marker,tag=dialogueplayerpos]
scoreboard players set . crosshair 1
kill @e[type=marker,tag=dialogue_player]
kill @e[type=marker,tag=dialoguemidpoint]
kill @e[type=villager,tag=dialoguetransition]
kill @e[type=minecart,tag=dialogue_minecart ]
execute as @p at @s run function alttp:dialogue_thirdpersonplayer

function animated_java:villager_link/remove/all

effect clear @p slowness

bossbar set dialoguebars visible false