scoreboard players set @s aj.bernard.animation.departure.local_anim_time 0
tag @s remove aj.bernard.animation.departure
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.bernard.disable_command_keyframes
function animated_java:bernard/zzzzzzzz/animations/departure/tree/leaf_0
tag @s remove aj.bernard.disable_command_keyframes