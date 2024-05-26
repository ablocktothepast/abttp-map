fill -378 -4 675 -378 -7 675 air
fill -275 -8 632 -275 -5 632 air
fill -310 -1 607 -310 2 607 air
data modify storage minecraft:quests main[{id:4}].progress set value 4

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"A test of agility","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s