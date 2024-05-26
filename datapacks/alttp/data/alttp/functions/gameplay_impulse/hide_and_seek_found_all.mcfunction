scoreboard players set bernardfound gameplay 1
scoreboard players set nealfound gameplay 1
scoreboard players set elisabethfound gameplay 1
data modify storage minecraft:quests main[{id:2}].progress set value 4
scoreboard players set # gameplay 10
scoreboard players set alldown gameplay 200

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"Boy Link!","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s