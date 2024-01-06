scoreboard players set # gameplay 15
scoreboard players set 6 quests_2_completed 1
clear @p carrot_on_a_stick{CustomModelData:297}

kill @e[type=cat,tag=agathacat]
summon cat -296 -5 667 {Invulnerable:1b,NoAI:1b,Owner:[I;2119276449,-101957143,-1523254293,104690445],Sitting:1b,variant:"minecraft:persian",CollarColor:11b,Rotation:[-62F,0F],Tags:["agathacat"]}

tp @e[tag=melissa] -295 -14 635 170 0
tp @e[tag=percival] -328 6 647 -90 0
data merge entity @e[type=armor_stand,tag=percival,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:306}},{}]}
execute as @e[type=item_display,tag=percival] run function animated_java:percival/animations/idle_sitting/stop
execute as @e[type=item_display,tag=percival] run function animated_java:percival/animations/idle/play
tp @e[tag=lysander] -319 -1 714 46 0
data merge entity @e[type=armor_stand,tag=lysander,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:307}},{}]}
execute as @e[type=item_display,tag=lysander] run function animated_java:lysander/animations/idle_sitting/stop
execute as @e[type=item_display,tag=lysander] run function animated_java:lysander/animations/idle/play
tp @e[tag=fiona] -247 -6 725 114 0
data merge entity @e[type=armor_stand,tag=fiona,limit=1] {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:311}},{}]}
execute as @e[type=item_display,tag=fiona] run function animated_java:fiona/animations/idle_sitting/stop
execute as @e[type=item_display,tag=fiona] run function animated_java:fiona/animations/idle/play
tp @e[tag=elisabeth] -247 -6 734 116 0
tp @e[tag=bernard] -246 -6 730 54 0
tp @e[tag=neal] -249 -1 718 164 0

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