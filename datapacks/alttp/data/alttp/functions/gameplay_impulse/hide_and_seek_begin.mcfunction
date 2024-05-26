scoreboard players set # gameplay 9
scoreboard players set hidedown gameplay 200
data modify storage quests main prepend value {id:2,completed:0,progress:1}

scoreboard players set bernardfound gameplay 0
scoreboard players set elisabethfound gameplay 0
scoreboard players set nealfound gameplay 0

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest added: "},{"text":"Boy Link!","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s