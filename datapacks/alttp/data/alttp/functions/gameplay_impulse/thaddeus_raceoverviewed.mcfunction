fill -378 -4 675 -378 -7 675 air
fill -275 -8 632 -275 -5 632 air
fill -310 -1 607 -310 2 607 air
scoreboard players set 4 quests_2_progress 4

bossbar set questupdate name [{"text":"Quest updated: "},{"text":"A test of agility","color":"gold","bold":true}]
bossbar set questupdate visible true
schedule function alttp:questupdatehide 5s