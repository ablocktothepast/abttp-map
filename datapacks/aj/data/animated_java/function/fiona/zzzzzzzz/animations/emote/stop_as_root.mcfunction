scoreboard players set @s aj.fiona.animation.emote.local_anim_time 0
tag @s remove aj.fiona.animation.emote
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.fiona.disable_command_keyframes
function animated_java:fiona/zzzzzzzz/animations/emote/tree/leaf_0
tag @s remove aj.fiona.disable_command_keyframes