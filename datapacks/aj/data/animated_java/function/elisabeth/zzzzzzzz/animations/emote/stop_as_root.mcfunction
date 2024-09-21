scoreboard players set @s aj.elisabeth.animation.emote.local_anim_time 0
tag @s remove aj.elisabeth.animation.emote
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.elisabeth.disable_command_keyframes
function animated_java:elisabeth/zzzzzzzz/animations/emote/tree/leaf_0
tag @s remove aj.elisabeth.disable_command_keyframes