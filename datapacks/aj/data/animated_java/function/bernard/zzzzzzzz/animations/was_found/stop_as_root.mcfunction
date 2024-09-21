scoreboard players set @s aj.bernard.animation.was_found.local_anim_time 0
tag @s remove aj.bernard.animation.was_found
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.bernard.disable_command_keyframes
function animated_java:bernard/zzzzzzzz/animations/was_found/tree/leaf_0
tag @s remove aj.bernard.disable_command_keyframes