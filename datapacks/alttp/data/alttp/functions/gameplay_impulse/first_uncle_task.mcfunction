scoreboard players set 1 quests_2 1

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest added: "},{"text":"Apple delivery","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s