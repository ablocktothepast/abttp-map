scoreboard players set @s aj.villager_link.animation.walking.local_anim_time 0
tag @s remove aj.villager_link.animation.walking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.villager_link.disable_command_keyframes
function animated_java:villager_link/zzzzzzzz/animations/walking/tree/leaf_0
tag @s remove aj.villager_link.disable_command_keyframes