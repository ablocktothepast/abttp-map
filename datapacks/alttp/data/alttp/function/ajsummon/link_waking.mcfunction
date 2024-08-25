function animated_java:villager_link/remove/all

execute positioned -318.0 7 584 rotated -90 0 run function animated_java:villager_link/summon
execute as @e[tag=aj.villager_link.root] run function animated_java:villager_link/animations/waking_up/play