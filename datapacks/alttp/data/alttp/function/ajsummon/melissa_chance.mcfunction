schedule clear alttp:ajsummon/melissa_chance

execute store result score result rand run random value 1..4
execute if score result rand matches 1..3 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/sweeping/stop
execute if score result rand matches 1..3 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/idle/play
execute if score result rand matches 1..3 as @e[type=item_display,tag=aj.melissa.root] run schedule function alttp:ajsummon/melissa_chance 12s
execute if score result rand matches 4 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/idle/stop
execute if score result rand matches 4 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/sweeping/play
execute if score result rand matches 4 as @e[type=item_display,tag=aj.melissa.root] run schedule function alttp:ajsummon/melissa_chance 7s