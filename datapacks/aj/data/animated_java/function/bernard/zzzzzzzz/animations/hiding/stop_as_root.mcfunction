scoreboard players set @s aj.bernard.animation.hiding.local_anim_time 0
tag @s remove aj.bernard.animation.hiding
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.bernard.disable_command_keyframes
function animated_java:bernard/zzzzzzzz/animations/hiding/tree/leaf_0
tag @s remove aj.bernard.disable_command_keyframes