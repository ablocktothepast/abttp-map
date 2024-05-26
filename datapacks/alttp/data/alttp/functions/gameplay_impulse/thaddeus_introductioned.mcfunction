data modify storage minecraft:quests main[{id:4}].progress set value 2
scoreboard players set thaddeusmove gameplay 2

kill @e[tag=thaddeusmove]
summon marker -406.650 -8 680.275 {Tags:["thaddeusmove"]}
summon marker -404.288 -8 680.356 {Tags:["thaddeusmove"]}
summon marker -402.360 -8 680.564 {Tags:["thaddeusmove"]}
summon marker -400.337 -8 683.344 {Tags:["thaddeusmove"]}
summon marker -400.647 -8 690.078 {Tags:["thaddeusmove"]}
summon marker -402.357 -8 692.007 {Tags:["thaddeusmove"]}
summon marker -403.807 -8.8 693.755 {Tags:["thaddeusmove"]}
summon marker -404.898 -9.8 695.339 {Tags:["thaddeusmove"]}
summon marker -405.682 -9.9 698.022 {Tags:["thaddeusmove"]}
summon marker -406.648 -9.9 701.823 {Tags:["thaddeusmove"]}
summon marker -406.077 -9.9 703.207 {Tags:["thaddeusmove"]}
summon marker -405.644 -10.8 704.47 {Tags:["thaddeusmove"]}
summon marker -403.574 -11 707.226 {Tags:["thaddeusmove"]}
summon marker -401.435 -11 709.031 {Tags:["thaddeusmove"]}
summon marker -401 -11 711 {Tags:["thaddeusmove","end"]}
setblock -405 -10 680 redstone_torch

execute as @e[type=item_display,tag=thaddeus] run function animated_java:thaddeus/animations/running/play

bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"A test of agility","color":"gold","bold":true},{"text":" ⟞⟝"}]
function alttp:questupdateshow
schedule function alttp:questupdatehide 5s