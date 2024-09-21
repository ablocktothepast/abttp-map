scoreboard players set @s aj.lysander.animation.emote_sitting.local_anim_time 0
tag @s remove aj.lysander.animation.emote_sitting
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.lysander.disable_command_keyframes
function animated_java:lysander/zzzzzzzz/animations/emote_sitting/tree/leaf_0
tag @s remove aj.lysander.disable_command_keyframes