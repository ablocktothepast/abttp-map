scoreboard players set @p spw_u_1 1
scoreboard players set 3 quests_2 1
scoreboard players set # gameplay 12
scoreboard players set 3 quests_2_progress 1
bossbar set questupdate name [{"text":"Quest added: "},{"text":"A test of knowledge","color":"gold","bold":true}]
bossbar set questupdate visible true
schedule function alttp:questupdatehide 5s