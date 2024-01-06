scoreboard players set racecp2 gameplay 1
setblock -271 -12 630 air
setblock -271 -10 630 grass_block
execute at @p run playsound minecraft:block.note_block.bit weather @p ~ ~ ~ 1 1.5

fill -317 -7 611 -313 -5 607 air
fill -313 -7 607 -317 -7 611 iron_block
fill -314 -6 610 -316 -6 608 iron_block
setblock -315 -5 609 beacon
setblock -315 -4 609 air
setblock -315 -3 609 minecraft:light_blue_stained_glass