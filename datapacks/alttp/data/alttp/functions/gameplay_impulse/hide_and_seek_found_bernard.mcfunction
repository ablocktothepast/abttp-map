scoreboard players set bernardfound gameplay 1
scoreboard players add 2 quests_2_progress 1

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"Boy Link!","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s