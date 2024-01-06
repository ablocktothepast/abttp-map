scoreboard players set 3 quests_2_progress 2
fill -307 -17 654 -307 -20 652 minecraft:air
fill -254 -11 640 -255 -10 640 minecraft:air

execute positioned -297 -20 657 run kill @e[tag=chestm,distance=..2]
execute positioned -297 -20 657 run kill @e[tag=chestd,distance=..2]
execute positioned -297 -20 657 rotated 180 0 run function alttp:chests/big_magic

execute positioned -281 -20 662 run kill @e[tag=chestm,distance=..2]
execute positioned -281 -20 662 run kill @e[tag=chestd,distance=..2]
execute positioned -281 -20 662 rotated 180 0 run function alttp:chests/big_magic

execute positioned -277 -18 620 run kill @e[tag=chestm,distance=..2]
execute positioned -277 -18 620 run kill @e[tag=chestd,distance=..2]
execute positioned -277 -18 620 rotated 0 0 run function alttp:chests/big_magic

setblock -254 6 640 minecraft:lever[face=floor,facing=east]

scoreboard players set melissamove gameplay 2
kill @e[type=marker,tag=melissamove]
summon marker -293.868 -9 636.351 {Tags:["melissamove"]}
summon marker -294.600 -9 635.002 {Tags:["melissamove"]}
summon marker -296.241 -9 634.994 {Tags:["melissamove"]}
summon marker -297.553 -10 635.230 {Tags:["melissamove"]}
summon marker -299.257 -10 634.987 {Tags:["melissamove"]}
summon marker -301.082 -10 635.625 {Tags:["melissamove"]}
summon marker -301.784 -10 637.356 {Tags:["melissamove"]}
summon marker -300.444 -10 637.981 {Tags:["melissamove"]}
summon marker -296.586 -14 638.149 {Tags:["melissamove","stair"]}
summon marker -294.198 -14 639.019 {Tags:["melissamove"]}
summon marker -294.052 -14 642.115 {Tags:["melissamove"]}
summon marker -297.039 -14 642.542 {Tags:["melissamove"]}
summon marker -300.240 -14 642.085 {Tags:["melissamove"]}
summon marker -303.453 -14 642.623 {Tags:["melissamove"]}
summon marker -306.465 -14 642.514 {Tags:["melissamove"]}
summon marker -307.554 -14 641.564 {Tags:["melissamove","end"]}
execute as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/idle/stop
execute as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/walking/play

setblock -302 -10 636 minecraft:spruce_fence_gate[facing=south,open=true]
setblock -305 -16 642 redstone_torch
tag @e[type=marker,tag=doormarker,nbt={data:{id:12}}] remove locked

scoreboard players set melissa_guide gameplay 1