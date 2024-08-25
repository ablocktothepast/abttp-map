scoreboard players add . dungeondoor 1
execute if score . dungeondoor matches 0.. run gamemode spectator @p
execute if score . dungeondoor matches 0.. run title @a actionbar ""
execute if score . dungeondoor matches 0.. run spectate @e[type=villager,tag=doorcutscene,limit=1] @p
execute if score . dungeondoor matches 1..45 as @e[type=item_display,tag=dungeondoor_opening] at @s run tp @s ~ ~0.05 ~

execute if score . dungeondoor matches 41..80 as @e[type=villager,tag=doorcutscene,limit=1] at @s run tp @s ^ ^ ^0.05

execute if score . dungeondoor matches 80 run function alttp:dungeon/open_door_end

team join no_collide @p
team join no_collide @e[type=villager,tag=doorcutscene]