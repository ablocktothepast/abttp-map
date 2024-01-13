scoreboard players set nealfound gameplay 1
scoreboard players add 2 quests_2_progress 1

bossbar set questupdate name [{"text":"Quest updated: "},{"text":"Boy Link!","color":"gold","bold":true}]
bossbar set questupdate visible true
schedule function alttp:questupdatehide 5s