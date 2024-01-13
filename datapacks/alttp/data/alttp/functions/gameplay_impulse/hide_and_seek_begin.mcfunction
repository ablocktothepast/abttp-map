scoreboard players set # gameplay 9
scoreboard players set hidedown gameplay 200
scoreboard players set 2 quests_2 1
scoreboard players set 2 quests_2_progress 1

scoreboard players set bernardfound gameplay 0
scoreboard players set elisabethfound gameplay 0
scoreboard players set nealfound gameplay 0

bossbar set questupdate name [{"text":"Quest added: "},{"text":"Boy Link!","color":"gold","bold":true}]
bossbar set questupdate visible true
schedule function alttp:questupdatehide 5s