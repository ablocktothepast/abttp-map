scoreboard players set # gameplay 15

data remove storage quests main[{id:7}]
data modify storage quests main append value {id:7,progress:1,completed:1}

clear @p shears{CustomModelData:1}

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest completed: "},{"text":"A town filled with muck","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s

kill @e[tag=muckyspider]
kill @e[tag=muckyspidersf]

tp @e[tag=melissa] -295 -14 635 170 0
tp @e[tag=percival] -328 6 647 -90 0
data merge entity @e[tag=percival,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:306}},{}]}
tp @e[tag=lysander] -319 -1 714 46 0
data merge entity @e[tag=lysander,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:307}},{}]}
tp @e[tag=fiona] -247 -6 725 114 0
data merge entity @e[tag=fiona,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:311}},{}]}
tp @e[tag=elisabeth] -247 -6 734 116 0
tp @e[tag=bernard] -246 -6 730 54 0
tp @e[tag=neal] -249 -1 718 164 0

tag @p remove muck_cobweb

function alttp:npcs/town
tp @e[tag=bertram] -301 -7.8125 679

summon marker -301.412 -8 679.547 {Tags:["bertramwalk"]}
summon marker -302.389 -9 679.491 {Tags:["bertramwalk"]}
summon marker -302.846 -9 676.509 {Tags:["bertramwalk"]}
summon marker -299.858 -9 647.579 {Tags:["bertramwalk"]}
summon marker -299.491 -9 671.803 {Tags:["bertramwalk"]}
summon marker -299.540 -9 670.308 {Tags:["bertramwalk"]}
summon marker -302.234 -9 668.202 {Tags:["bertramwalk"]}
summon marker -304.016 -9 660.268 {Tags:["bertramwalk"]}
summon marker -302.161 -9 651.775 {Tags:["bertramwalk"]}
summon marker -298.782 -9 646.622 {Tags:["bertramwalk"]}
summon marker -293.209 -9 647.232 {Tags:["bertramwalk"]}
summon marker -288.663 -9 652.477 {Tags:["bertramwalk"]}
summon marker -285.346 -5 660.057 {Tags:["bertramwalk"]}
summon marker -285.443 -5 661.561 {Tags:["bertramwalk"]}
summon marker -285.650 -5 663.478 {Tags:["bertramwalk"]}
summon marker -287.437 -5 664.676 {Tags:["bertramwalk"]}
summon marker -292 -5 665 {Tags:["bertramwalk","end"]}
setblock -286 -7 661 redstone_torch
scoreboard players set bertramwalk gameplay 2
execute as @e[type=item_display,tag=bertram] run function animated_java:bertram/animations/idle/stop
execute as @e[type=item_display,tag=bertram] run function animated_java:bertram/animations/walking/play

tellraw @p "Hello testers! This is the end of the current game. You can look around the town and talk to the NPCs some more, but there are no new quests. Thank you for testing! If you want, you can download a fresh copy of the game to test other quests."