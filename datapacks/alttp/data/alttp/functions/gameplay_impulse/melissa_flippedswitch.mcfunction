playsound minecraft:block.bell.use weather @p ~ ~ ~ 1 0.75
playsound minecraft:block.bell.use weather @p ~ ~ ~ 1 0.5
playsound minecraft:block.bell.use weather @p ~ ~ ~ 1 1
fill -253 -9 638 -254 -11 637 air
setblock -254 6 640 minecraft:lever[face=floor,facing=east,powered=true]
fill -254 -11 640 -255 -10 640 minecraft:iron_bars
fill -307 -17 654 -307 -20 652 minecraft:iron_bars
scoreboard players set 3 quests_2_progress 3
scoreboard players set id dialogue 115
schedule function alttp:dialogue_start 20t