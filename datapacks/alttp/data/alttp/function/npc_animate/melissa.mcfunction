execute at @s rotated ~ 0 run function animated_java:melissa/summon
execute store result score result rand run random value 1..4
execute unless score melissamove gameplay matches 1.. if score result rand matches 1..3 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/idle/play
execute unless score melissamove gameplay matches 1.. if score result rand matches 1..3 as @e[type=item_display,tag=aj.melissa.root] run schedule function alttp:ajsummon/melissa_chance 12s
execute unless score melissamove gameplay matches 1.. if score result rand matches 4 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/sweeping/play
execute unless score melissamove gameplay matches 1.. if score result rand matches 4 as @e[type=item_display,tag=aj.melissa.root] run schedule function alttp:ajsummon/melissa_chance 7s
execute if score melissamove gameplay matches 1.. as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/walking/play
tag @e[type=item_display,tag=aj.melissa.root] add npc
tag @e[type=item_display,tag=aj.melissa.root] add melissa
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.melissa.root] add npcfocus
kill @s