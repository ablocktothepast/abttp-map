scoreboard players set 1 quests_2_completed 1
scoreboard players set # gameplay 7
clear @p apple
time set 10000

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest completed: "},{"text":"Apple delivery","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s