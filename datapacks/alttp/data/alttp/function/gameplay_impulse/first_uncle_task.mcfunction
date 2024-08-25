data modify storage quests main prepend value {id:1,completed:0,progress:1}

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest added: "},{"text":"Apple delivery","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s