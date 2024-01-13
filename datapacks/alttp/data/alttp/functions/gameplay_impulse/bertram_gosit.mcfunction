scoreboard players set 5 quests_2_progress 2
bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"A test of knowledge","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s