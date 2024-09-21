scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.agatha.animation.thank_you_thank_you.local_anim_time 0
scoreboard players set @s aj.agatha.animation.thank_you_thank_you.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:agatha/zzzzzzzz/animations/thank_you_thank_you/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.agatha.animation.thank_you_thank_you