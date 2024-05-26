scoreboard players set # gameplay 12
data modify storage quests main prepend value {id:5,completed:0,progress:1}
setblock -295 -9 681 oak_slab[type=bottom]
setblock -294 -9 681 minecraft:spruce_wall_sign[facing=east]

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest added: "},{"text":"A test of knowledge","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s