scoreboard players set @s aj.background_picture_with_camera.animation.animation.local_anim_time 0
tag @s remove aj.background_picture_with_camera.animation.animation
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.background_picture_with_camera.disable_command_keyframes
function animated_java:background_picture_with_camera/zzzzzzzz/animations/animation/tree/leaf_0
tag @s remove aj.background_picture_with_camera.disable_command_keyframes