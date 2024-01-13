scoreboard players set # gameplay 12
scoreboard players set 5 quests_2 1
scoreboard players set 5 quests_2_progress 1
setblock -295 -9 681 oak_slab[type=bottom]
setblock -294 -9 681 minecraft:spruce_wall_sign[facing=east]

bossbar set questupdate name [{"text":"Quest added: "},{"text":"A test of knowledge","color":"gold","bold":true}]
bossbar set questupdate visible true
schedule function alttp:questupdatehide 5s