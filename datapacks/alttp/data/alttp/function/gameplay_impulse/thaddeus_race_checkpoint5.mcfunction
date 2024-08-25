scoreboard players set racecp5 gameplay 1
setblock -354 -1 689 air
setblock -354 2 689 grass_block
execute at @p run playsound minecraft:block.note_block.bit weather @p ~ ~ ~ 1 1.5

fill -358 -5 764 -362 -2 768 air
fill -362 -5 768 -358 -5 764 iron_block
fill -359 -4 765 -361 -4 767 iron_block
setblock -360 -3 766 beacon
setblock -360 -1 766 minecraft:yellow_stained_glass