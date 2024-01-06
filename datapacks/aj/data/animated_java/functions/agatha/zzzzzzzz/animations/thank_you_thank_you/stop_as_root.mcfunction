scoreboard players set @s aj.agatha.animation.thank_you_thank_you.local_anim_time 0
tag @s remove aj.agatha.animation.thank_you_thank_you
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.agatha.disable_command_keyframes
function animated_java:agatha/zzzzzzzz/animations/thank_you_thank_you/tree/leaf_0
tag @s remove aj.agatha.disable_command_keyframes