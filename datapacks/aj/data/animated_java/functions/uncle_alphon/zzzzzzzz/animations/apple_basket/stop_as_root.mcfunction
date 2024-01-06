scoreboard players set @s aj.uncle_alphon.animation.apple_basket.local_anim_time 0
tag @s remove aj.uncle_alphon.animation.apple_basket
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.uncle_alphon.disable_command_keyframes
function animated_java:uncle_alphon/zzzzzzzz/animations/apple_basket/tree/leaf_0
tag @s remove aj.uncle_alphon.disable_command_keyframes