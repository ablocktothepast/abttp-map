scoreboard players set @s aj.eamon.animation.idle.local_anim_time 0
tag @s remove aj.eamon.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eamon.disable_command_keyframes
function animated_java:eamon/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.eamon.disable_command_keyframes