scoreboard players set 1 quests_2_completed 1
scoreboard players set # gameplay 7
clear @p apple
time set 10000

bossbar set questupdate name [{"text":"Quest completed: "},{"text":"Apple delivery","color":"gold","bold":true}]
bossbar set questupdate visible true
schedule function alttp:questupdatehide 5s