scoreboard players set @s aj.tristan.animation.walking.local_anim_time 0
tag @s remove aj.tristan.animation.walking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.tristan.disable_command_keyframes
function animated_java:tristan/zzzzzzzz/animations/walking/tree/leaf_0
tag @s remove aj.tristan.disable_command_keyframes