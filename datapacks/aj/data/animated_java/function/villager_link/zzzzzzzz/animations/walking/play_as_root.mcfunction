scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.villager_link.animation.walking.local_anim_time 0
scoreboard players set @s aj.villager_link.animation.walking.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:villager_link/zzzzzzzz/animations/walking/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.villager_link.animation.walking