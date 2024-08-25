scoreboard players set # gameplay 5
tag @e remove npcfocus

kill @e[tag=unclelock]
execute at @e[type=marker,tag=dialogueplayerpos] run summon marker ~ ~ ~ {Tags:["unclelock"]}
execute at @e[type=marker,tag=dialogueplayerpos] run tp @e[tag=unclelock] ~ ~ ~ ~ ~

kill @e[tag=unclemove]
summon marker -316.931 -1 584.87 {Tags:["unclemove"]}
summon marker -317.75 -1 585.563 {Tags:["unclemove"]}
summon marker -318.067 -1 586.103 {Tags:["unclemove"]}
summon marker -318.179 -1 586.5 {Tags:["unclemove"]}
summon marker -318.3 -3 588.5 {Tags:["unclemove"]}
summon marker -318.026 -3 589.106 {Tags:["unclemove"]}
summon marker -317.944 -3 590.394 {Tags:["unclemove"]}
summon marker -317.625 -3 592.286 {Tags:["unclemove"]}
summon marker -318.177 -3 596.126 {Tags:["unclemove","end"]}

fill -318 -5 590 -319 -5 590 redstone_torch

execute as @e[type=item_display,tag=aj.uncle_alphon.root] run function animated_java:uncle_alphon/animations/idle_grin/stop
execute as @e[type=item_display,tag=aj.uncle_alphon.root] run function animated_java:uncle_alphon/animations/walking/play

kill @e[tag=applebasket]