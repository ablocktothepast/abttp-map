execute as @e[type=item_display,tag=dungeondoor_opening] at @s run tp @s ~ ~-2.25 ~
tag @e[type=item_display,tag=dungeondoor_opening] remove dungeondoor_opening
function alttp:dungeon/get_room_id
execute at @e[type=marker,tag=door_loc_detect,tag=!closest,limit=1] run tp @p ~ ~-0.5 ~
kill @e[type=marker,tag=door_loc_detect]
gamemode adventure @p
kill @e[type=villager,tag=doorcutscene]
scoreboard players set . dungeondoor -6
function alttp:hotbar