scoreboard players set # gameplay 11
time set 12000
scoreboard players set 2 quests_2_completed 1
scoreboard players set firstbatch gameplay 0

bossbar set questupdate name [{"text":"Quest completed: "},{"text":"Boy Link!","color":"gold","bold":true}]
bossbar set questupdate visible true
schedule function alttp:questupdatehide 5s