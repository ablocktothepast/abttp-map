scoreboard players set @p spw_u_1 1
data modify storage quests main prepend value {id:3,completed:0,progress:1}
scoreboard players set # gameplay 12
bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest added: "},{"text":"A test of knowledge","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s