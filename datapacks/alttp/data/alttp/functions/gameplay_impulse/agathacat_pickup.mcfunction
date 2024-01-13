scoreboard players set 6 quests_2_progress 5
bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"A cat that's stuck","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s
tp @e[type=cat,tag=agathacat] 0 -64 0
execute at @p run playsound entity.cat.purreow weather @p ~ ~ ~ 1 1
execute at @p run playsound minecraft:alttp.heart weather @p ~ ~ ~ 1 1