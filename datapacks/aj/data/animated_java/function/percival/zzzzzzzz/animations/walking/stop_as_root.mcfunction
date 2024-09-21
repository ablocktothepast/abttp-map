scoreboard players set @s aj.percival.animation.walking.local_anim_time 0
tag @s remove aj.percival.animation.walking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.percival.disable_command_keyframes
function animated_java:percival/zzzzzzzz/animations/walking/tree/leaf_0
tag @s remove aj.percival.disable_command_keyframes