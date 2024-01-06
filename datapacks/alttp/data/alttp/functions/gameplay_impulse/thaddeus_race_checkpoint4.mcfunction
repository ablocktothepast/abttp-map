scoreboard players set racecp4 gameplay 1
setblock -315 -5 609 air
setblock -315 -3 609 grass_block
execute at @p run playsound minecraft:block.note_block.bit weather @p ~ ~ ~ 1 1.5

fill -352 -3 691 -356 0 687 air
fill -352 -3 691 -356 -3 687 iron_block
fill -353 -2 690 -355 -2 688 iron_block
setblock -354 -1 689 beacon
setblock -354 1 689 air
setblock -354 2 689 minecraft:light_blue_stained_glass