execute store result score racefinish gameplay run scoreboard players get racetime gameplay
bossbar set racetime visible false
title @p times 10t 30t 10t
title @p title "\uE006"
execute at @p run playsound block.note_block.bit weather @p ~ ~ ~ 1 2
scoreboard players set racetime gameplay -101
schedule function alttp:gameplay_impulse/thaddeus_race_results 25t
setblock -360 -3 766 air
setblock -360 -1 766 minecraft:grass_block