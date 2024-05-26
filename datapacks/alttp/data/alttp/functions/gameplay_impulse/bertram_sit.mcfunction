data modify storage minecraft:quests main[{id:5}].progress set value 3
tp @e[type=armor_stand,tag=bertram] -301 -7.8125 679 -90 0
fill -295 -9 681 -294 -9 681 air replace

tp @e[tag=percival] -295.25 -8.5 683 129 0
tp @e[tag=amara] -294.25 -8.5 679 89 0
tp @e[tag=lysander] -295.25 -8.5 675 69 0
tp @e[tag=fiona] -294.25 -8.5 677 49 0

tp @p -295 -9 681 110 0

scoreboard players set bertramcorrect gameplay 0
scoreboard players set bertrampoints gameplay 0
scoreboard players set id dialogue 148
tag @e[tag=bertram] add npc_focus
function alttp:dialogue_start

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"A test of knowledge","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s