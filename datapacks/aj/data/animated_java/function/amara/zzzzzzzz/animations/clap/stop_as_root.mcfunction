scoreboard players set @s aj.amara.animation.clap.local_anim_time 0
tag @s remove aj.amara.animation.clap
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.amara.disable_command_keyframes
function animated_java:amara/zzzzzzzz/animations/clap/tree/leaf_0
tag @s remove aj.amara.disable_command_keyframes