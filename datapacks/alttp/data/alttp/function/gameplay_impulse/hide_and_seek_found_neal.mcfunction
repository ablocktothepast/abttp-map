scoreboard players set nealfound gameplay 1
execute store result score temp dummy run data get storage quests main[{id:2}].progress
scoreboard players add temp dummy 1
execute store result storage minecraft:quests main[{id:2}].progress int 1 run scoreboard players get temp dummy

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"Boy Link!","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s