scoreboard players set # gameplay 12
scoreboard players set 4 quests_2 1
scoreboard players set 4 quests_2_progress 1

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest added: "},{"text":"A test of agility","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s