scoreboard players set @p set_damage 2
tp @p @e[type=marker,tag=respawn,limit=1]
execute store result score @s drowning run scoreboard players get @s flippers