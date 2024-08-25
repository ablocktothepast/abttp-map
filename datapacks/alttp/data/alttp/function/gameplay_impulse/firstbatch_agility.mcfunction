scoreboard players set # gameplay 12
data modify storage quests main prepend value {id:4,completed:0,progress:1}

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest added: "},{"text":"A test of agility","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s