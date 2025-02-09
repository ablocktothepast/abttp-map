data remove storage quests main[{id:4}]
data modify storage quests main append value {id:4,progress:1,completed:1}

schedule function alttp:gameplay_impulse/thaddeus_runback 3s
scoreboard players set # gameplay 13

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest completed: "},{"text":"A test of agility","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s

kill @e[tag=thaddeusmove2]
summon marker -402.378 -11 709.669 {Tags:["thaddeusmove2"]}
summon marker -404.051 -11 706.355 {Tags:["thaddeusmove2"]}
summon marker -404.783 -11 704.342 {Tags:["thaddeusmove2"]}
summon marker -405.171 -9.9 702.89 {Tags:["thaddeusmove2"]}
summon marker -403.494 -9.9 697.768 {Tags:["thaddeusmove2"]}
summon marker -402.908 -9.9 695.321 {Tags:["thaddeusmove2"]}
summon marker -402.131 -8 692.183 {Tags:["thaddeusmove2"]}
summon marker -400.929 -8 687.594 {Tags:["thaddeusmove2"]}
summon marker -401.966 -8 680.784 {Tags:["thaddeusmove2"]}
summon marker -404.720 -8 680.315 {Tags:["thaddeusmove2"]}
summon marker -410 -8 680 {Tags:["thaddeusmove2","end"]}
setblock -405 -10 680 redstone_torch

execute as @e[type=item_display,tag=thaddeus] run function animated_java:thaddeus/animations/hovering/stop
execute as @e[type=item_display,tag=thaddeus] run function animated_java:thaddeus/animations/surprised/stop
execute as @e[type=item_display,tag=thaddeus] run function animated_java:thaddeus/animations/idle/play

scoreboard players set amarawalk gameplay 2
execute as @e[type=item_display,tag=amara] run function animated_java:amara/animations/idle_sitting/stop
execute as @e[type=item_display,tag=amara] run function animated_java:amara/animations/running/play
data merge entity @e[type=armor_stand,tag=amara,limit=1] {HandItems: [{components: {"minecraft:custom_model_data": 308}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

setblock -342 2 675 redstone_torch

summon marker -296.772 -9 679.877 {Tags:["amarawalk"]}
summon marker -294.713 -9.0625 680.529 {Tags:["amarawalk"]}
summon marker -291.920 -9 680.756 {Tags:["amarawalk"]}
summon marker -284.198 -9 685.039 {Tags:["amarawalk"]}
summon marker -282.736 -9.0625 685.354 {Tags:["amarawalk"]}
summon marker -277.564 -12 686.989 {Tags:["amarawalk"]}
summon marker -267.961 -12 695.245 {Tags:["amarawalk"]}
summon marker -264.309 -14 698.243 {Tags:["amarawalk"]}
summon marker -263.194 -14 701.213 {Tags:["amarawalk"]}
summon marker -264.497 -15.0625 702.425 {Tags:["amarawalk"]}
summon marker -268.362 -15 707.230 {Tags:["amarawalk"]}
summon marker -277.553 -15 709.771 {Tags:["amarawalk"]}
summon marker -282.329 -15 711.082 {Tags:["amarawalk"]}
summon marker -283.818 -14 710.236 {Tags:["amarawalk"]}
summon marker -294.199 -14 708.655 {Tags:["amarawalk"]}
summon marker -296.270 -13 708.072 {Tags:["amarawalk"]}
summon marker -303.586 -13 706.276 {Tags:["amarawalk"]}
summon marker -304.832 -12 705.953 {Tags:["amarawalk"]}
summon marker -308.582 -12 704.311 {Tags:["amarawalk"]}
summon marker -310.079 -11 703.689 {Tags:["amarawalk"]}
summon marker -311.425 -11 702.360 {Tags:["amarawalk"]}
summon marker -311.770 -10.0625 702.112 {Tags:["amarawalk"]}
summon marker -314.623 -10 701.205 {Tags:["amarawalk"]}
summon marker -317.851 -8.0625 701.137 {Tags:["amarawalk"]}
summon marker -319.505 -8 701.24 {Tags:["amarawalk"]}
summon marker -320.795 -7 701.268 {Tags:["amarawalk"]}
summon marker -322.457 -7 701.305 {Tags:["amarawalk"]}
summon marker -325.903 -5 701.379 {Tags:["amarawalk"]}
summon marker -328.438 -5 701.427 {Tags:["amarawalk"]}
summon marker -329.867 -4 701.892 {Tags:["amarawalk"]}
summon marker -333.6 -4.0625 702.660 {Tags:["amarawalk"]}
summon marker -334.846 -3 702.983 {Tags:["amarawalk"]}
summon marker -337.613 -3 703.425 {Tags:["amarawalk"]}
summon marker -337.988 -2.0625 703.222 {Tags:["amarawalk"]}
summon marker -345.572 -2 702.627 {Tags:["amarawalk"]}
summon marker -346.834 -1 702.373 {Tags:["amarawalk"]}
summon marker -349.071 -1 700.350 {Tags:["amarawalk"]}
summon marker -349.732 0 699.088 {Tags:["amarawalk"]}
summon marker -351.603 0 697.323 {Tags:["amarawalk"]}
summon marker -351.583 1.9375 694.163 {Tags:["amarawalk"]}
summon marker -352.602 1.9375 691.329 {Tags:["amarawalk"]}
summon marker -352.581 2.9375 690.257 {Tags:["amarawalk"]}
summon marker -351.953 3 688.496 {Tags:["amarawalk"]}
summon marker -351.617 3.9375 687.253 {Tags:["amarawalk"]}
summon marker -348.383 4 676.465 {Tags:["amarawalk"]}
summon marker -342.368 4 675.451 {Tags:["amarawalk"]}
summon marker -340.651 4 675.488 {Tags:["amarawalk"]}
summon marker -338 4 677 {Tags:["amarawalk","end"]}

tp @e[tag=tristan] -332 2 650 0 0