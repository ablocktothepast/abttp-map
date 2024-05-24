scoreboard players set # gameplay 11

data remove storage quests main[{id:2}]
data modify storage quests main append value {id:2,progress:1,completed:1}

scoreboard players set firstbatch gameplay 0

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest completed: "},{"text":"Boy Link!","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s