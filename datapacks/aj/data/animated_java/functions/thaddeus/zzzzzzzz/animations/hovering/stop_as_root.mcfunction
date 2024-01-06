scoreboard players set @s aj.thaddeus.animation.hovering.local_anim_time 0
tag @s remove aj.thaddeus.animation.hovering
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.thaddeus.disable_command_keyframes
function animated_java:thaddeus/zzzzzzzz/animations/hovering/tree/leaf_0
tag @s remove aj.thaddeus.disable_command_keyframes