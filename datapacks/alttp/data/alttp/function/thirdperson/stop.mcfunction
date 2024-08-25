scoreboard players set . thirdperson 0
tp @p @e[type=armor_stand,tag=thirdperson_player,limit=1]
kill @e[type=armor_stand,tag=thirdperson_player]
kill @e[type=minecart,tag=thirdperson_minecart]
kill @e[type=marker,tag=thirdperson_marker]
kill @e[type=interaction,tag=thirdperson_interaction]
effect clear @p invisibility
effect clear @p resistance
effect clear @p mining_fatigue
scoreboard players set . crosshair 1